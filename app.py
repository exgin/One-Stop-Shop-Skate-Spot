from flask import Flask, render_template, request, redirect
from flask_debugtoolbar import DebugToolbarExtension
from form import Input
from apis import f_map, f_marker
from secrets import NEWS_API_KEY, SECRET
from models import connect_db, db
import requests

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "postgres:///city_state"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
app.config["SQLALCHEMY_ECHO"] = True
app.config["SECRET_KEY"] = SECRET

connect_db(app)
# db.drop_all()
db.create_all()

toolbar = DebugToolbarExtension(app)

@app.route('/')
def redirect_to_home():
    """Simple route to redirect user back to our home page"""

    return redirect('/home')

@app.route('/home', methods=['GET', 'POST'])
def homepage():
    """Show homepage, user current location & map of amount of skateparks in the users state"""
    f_map
    f_marker
    f_map.save('templates/map.html')

    form = Input()
    # form.city.choices = [city.name for city in City.query.filter_by(state=st).all()]

    if form.validate_on_submit():

        return redirect('/home')
    else:
        return render_template('home.html', form=form)

@app.route('/map')
def map():
    """Show map"""
    return render_template('./map.html') 

