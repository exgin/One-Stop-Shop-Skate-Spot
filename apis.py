from secrets import NEWS_API_KEY, client_id, api_key
import requests
import pandas
import folium
import os

# -Yelp API-
###########################################
def yelp_api(location):
    term = 'Skatepark'
    location = location
    SEARCH_LIMIT = 7

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

    ############ Creating Map ############
    lat_long = response.json()['region']['center']
    lat = lat_long['latitude']
    long = lat_long['longitude']

    states = os.path.join('data', 'us-states.json')
    skateparks_data = os.path.join('data', 'us_skateparks.csv')
    data = pandas.read_csv(skateparks_data)

    tooltip = 'Click here!'
    skatepark = 'Skatepark near you!'
    f_map = folium.Map([lat, long], zoom_start=7)
    f_current_loc = folium.Marker(
        [lat, long], popup='<strong>Current Location!</strong>', tooltip=tooltip, icon=folium.Icon(color='gray', icon='user')).add_to(f_map)

    # get all of the business lat/long
    bus = response.json()['businesses']
    for element in bus:
        # get coordinates
        coords = element['coordinates']
        lat = coords['latitude']
        long = coords['longitude']

        # get info
        info = element['location']
        addy = info['display_address']
        string_addy = ' '.join(map(str, addy))
        name = element['name']

        # add a marker for every skatepark
        folium.Marker([lat, long], popup=f"<h5><b>{name}</b></h5> {string_addy}",
                      tooltip=skatepark, icon=folium.Icon(color='green', icon='tree-deciduous')).add_to(f_map)

    # lay out map label
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

    f_map.save('templates/map.html')
