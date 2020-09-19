# from secrets import SECRET, HEROKU_SECRET_KEY
from flask import Flask, render_template, request, redirect, jsonify, session, flash, g
from sqlalchemy.exc import IntegrityError
from form import Input, RegisterForm, LoginForm, UserParkInput, CommentForm
from apis import yelp_api
from models import connect_db, db, StateData, User, Comments, Likes, ParkPost
import os
# from flask_debugtoolbar import DebugToolbarExtension

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = os.environ.get(
    'DATABASE_URL', "postgres:///city_state")
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
app.config["SQLALCHEMY_ECHO"] = True
app.config["SECRET_KEY"] = os.environ.get('HEROKU_SECRET_KEY', 'SECRET')
app.config['TEMPLATES_AUTO_RELOAD'] = True

connect_db(app)
# db.drop_all()
db.create_all()

# toolbar = DebugToolbarExtension(app)

CURR_USER_KEY = "curr_user"


def do_login(user):
    """Log in a user"""
    session[CURR_USER_KEY] = user.id


def do_logout():
    """Logout a user"""

    if CURR_USER_KEY in session:
        del session[CURR_USER_KEY]


@app.before_request
def add_user_to_g():
    """If logged in, add to global Flask"""
    if CURR_USER_KEY in session:
        g.user = User.query.get(session[CURR_USER_KEY])
    else:
        g.user = None


@app.route('/')
def redirect_to_home():
    """Simple route to redirect user back to our home page"""
    return redirect('/home')


@app.route('/home', methods=['GET', 'POST'])
def homepage():
    """Show homepage, user current location & map of amount of skateparks in the users state"""
    form = Input()

    if request.method == 'POST':
        location = f'{form.city.data}, {form.state.data}'
        yelp_api(location)

        return redirect('/home#skate-map')

    return render_template('skating-form.html', form=form)


@app.route('/addpark', methods=['GET', 'POST'])
def addpark():
    """Form & Page to add a park, if not logged in or signed up, have a pop-up login"""

    DEFAULT_PARK_PIC = "/static/images/defaultPark.jpg"

    all_parks = ParkPost.query.all()
    comment = CommentForm()
    park = UserParkInput()

    # Adding a Comment
    if comment.validate_on_submit():
        try:
            comment_post = Comments(comment=comment.comment.data)
            db.session.add(comment_post)
            db.session.commit()
        except IntegrityError:
            flash("Check input", "danger")
            return render_template('addpark.html', comment=comment, park=park, all_parks=all_parks)

        flash("Comment added!", "success")

        return redirect('/addpark')
    return render_template('addpark.html', comment=comment, park=park, all_parks=all_parks)

    # Adding A Park
    if park.validate_on_submit():
        try:
            park_post = ParkPost(
                park_name=park.park_name.data,
                description=park.description.data,
                address=park.address.data,
                image=park.image.data or DEFAULT_PARK_PIC
            )
            db.session.add(park_post)
            db.session.commit()

        except IntegrityError:
            flash("Check input", "danger")
            return render_template('addpark.html', comment=comment, park=park, all_parks=all_parks)
            # show all park posts

        flash("Park added!", "success")

        return redirect('/addpark')

    return render_template('addpark.html', comment=comment, park=park, all_parks=all_parks)


@app.route('/<int:park_post_id>/<action>')
def like_action(park_post_id, action):
    park_post = ParkPost.query.filter_by(id=park_post_id).first_or_404()
    if action == 'like':
        g.user.like_post(park_post)
        db.session.commit()
    if action == 'unlike':
        g.user.unlike_post(park_post)
        db.session.commit()

    return redirect(request.referrer)


@app.route('/register', methods=["GET", "POST"])
def register():
    """Register a user"""
    form = RegisterForm()

    if form.validate_on_submit():
        try:
            user = User.register(
                first_name=form.first_name.data,
                last_name=form.last_name.data,
                username=form.username.data,
                password=form.password.data
            )
            db.session.add(user)
            db.session.commit()

        except IntegrityError:
            flash("Username already taken, try a different one!", "danger")
            return render_template('register.html', form=form)

        do_login(user)

        flash(f"Welcome! {user.first_name}", 'success')

        return redirect('/addpark')
    else:
        return render_template('register.html', form=form)


@app.route('/login', methods=["GET", "POST"])
def login():
    """Login a user"""
    form = LoginForm()

    if form.validate_on_submit():
        user = User.authenticate(form.username.data, form.password.data)

        if user:
            do_login(user)
            flash(
                f"Successfully logged in! Weclome {user.first_name}", 'success')
            return redirect('/addpark')
        flash("Wrong username/password", "danger")

    return render_template("login.html", form=form)


@app.route('/logout')
def logout():
    """Handle logout of user."""
    do_logout()

    flash("Logged out!", "success")

    return redirect('/')


@app.route('/city/<state_id>')
def city(state_id):
    """Call route when the select changes"""
    cities = StateData.query.filter_by(state_id=state_id).all()

    cityList = []

    for city in cities:
        cityObj = {}
        cityObj['state_id'] = city.state_id
        cityObj['city'] = city.city
        cityList.append(cityObj)

    return jsonify({'cities': cityList})


@app.route('/map')
def map():
    """Show map"""
    return render_template('./map.html')


@app.errorhandler(404)
def not_found(e):
    return render_template("404.html")
