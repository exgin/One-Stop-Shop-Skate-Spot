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
location = 'Atlanta, GA'
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

# Creating a Map
###########################################
lat_long = response.json()['region']['center']
lat = lat_long['latitude']
long = lat_long['longitude']

tooltip = 'Click here!'
f_map = folium.Map([lat, long], zoom_start=5)

f_marker = folium.Marker([33.5215, -84.3538], popup='<strong>Your Location</strong>', tooltip=tooltip).add_to(f_map)



