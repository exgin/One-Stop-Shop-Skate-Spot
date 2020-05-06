from pprint import pprint
from newsapi import NewsApiClient
from secrets import NEWS_API_KEY, client_id, api_key
from yelp.client import Client
import geocoder
import requests
import folium
import os

# Geolocation API
###########################################
loc = geocoder.ip('me')


# News API
###########################################
newsapi = NewsApiClient(api_key=NEWS_API_KEY)

all_articles = newsapi.get_top_headlines(q='skateboarding',
                                      language='en',
                                      page=1)

# Yelp API
###########################################
term = 'Skatepark'
# set as a parameter in a function to request skateparks near their geo location location = city_state
location = 'San Jose, CA'
SEARCH_LIMIT = 10

url = 'https://api.yelp.com/v3/businesses/search'

headers = {
        'Authorization': 'Bearer {}'.format(api_key),
    }
url_params = {
                'term': term.replace(' ', '+'),
                'location': location.replace(' ', '+'),
                'limit': SEARCH_LIMIT
            }
response = requests.get(url, headers=headers, params=url_params)
# pprint(response.json())

# IP Location
###########################################
# Most likley going to use JS for this to get the user's geo location if it ends up working


# Creating a Map
###########################################
# For now, I'm using the geo locations response from yelp's API
lat_long = response.json()['region']['center']
lat = lat_long['latitude']
long = lat_long['longitude']

tooltip = 'Click here!'
f_map = folium.Map([lat, long], zoom_start=5)

f_marker = folium.Marker([lat, long], popup='<strong>Location Center</strong>', tooltip=tooltip).add_to(f_map)



