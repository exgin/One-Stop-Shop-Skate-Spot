from pprint import pprint
from newsapi import NewsApiClient
from secrets import NEWS_API_KEY, client_id, api_key
from yelp.client import Client
import requests
import pandas
import folium
import os


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

states = os.path.join('data', 'us-states.json')
skateparks_data = os.path.join('data', 'us_skateparks.csv')
data = pandas.read_csv(skateparks_data)

tooltip = 'Click here!'
f_map = folium.Map([lat, long], zoom_start=3)

f_marker = folium.Marker([lat, long], popup='<strong>Location Center</strong>', tooltip=tooltip).add_to(f_map)

f_map.choropleth(
    geo_data=states,
    name='chorolpeth',
    data=data,
    columns=['State', 'Skateparks'],
    key_on='feature.id',
    fill_color='YlGn',
    fill_opacity=0.7,
    line_opacity=0.2,
    legend_name='Skateparks Per State'
)

f_add = folium.LayerControl().add_to(f_map)

