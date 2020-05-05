from flask import Flask, render_template, request, redirect
from flask_debugtoolbar import DebugToolbarExtension
from form import Input
from apis import f_map, f_marker
from secrets import NEWS_API_KEY, SECRET
import requests
import requests_cache
import geocoder


app = Flask(__name__)
app.config["SECRET_KEY"] = SECRET
toolbar = DebugToolbarExtension(app)


requests_cache.install_cache(
    cache_name='mapbox_cache', backend='sqlite', expire_after=180)


@app.route('/')
def redirect_to_home():
    """Simple route to redirect user back to our home page"""

    return redirect('/home')


@app.route('/home', methods=['GET', 'POST'])
def homepage():
    """Show homepage, user current location, desire location, & map of the distance to skate to"""
    f_marker
    f_map
    f_map.save('templates/map.html')

    form = Input()

    user_curr_loc = geocoder.ip('me')

    if form.validate_on_submit():
        user_destination = form.desired_location.data

        des = geocoder.google(user_destination)

        return redirect('/home')
    else:
        return render_template('home.html', form=form)


@app.route('/map')
def map():
    return render_template('./map.html') 
