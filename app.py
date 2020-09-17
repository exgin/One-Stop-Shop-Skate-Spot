# from secrets import SECRET, HEROKU_SECRET_KEY
from flask import Flask, render_template, request, redirect, jsonify, session
from flask_debugtoolbar import DebugToolbarExtension
from form import Input
from apis import yelp_api
from models import connect_db, db, StateData
import os

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = os.environ.get(
    'DATABASE_URL', "postgres:///city_state")
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
app.config["SQLALCHEMY_ECHO"] = True
app.config["SECRET_KEY"] = os.environ.get('HEROKU_SECRET_KEY', 'SECRET')
app.config['TEMPLATES_AUTO_RELOAD'] = True

connect_db(app)
db.create_all()

# toolbar = DebugToolbarExtension(app)


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

    return render_template('login-signup.html')


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
