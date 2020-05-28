# One-Stop-Skate-Spot

This web application condenses anything to do with skating, for the new beginner skater, or for a more advanceded skater looking for new parks to skate at.

## Stack

- FrontEnd
  - HTML/CSS
  - JavaScript & jQuery
  - BootStrap 4
- BackEnd
  - Python w/ Flask
  - Postgres
- Version Control & Deployment

  - Heroku
  - Github

## Features

- Starting out skate tricks for beginners.
- View up to 7 skatboarding parks near your location.
- See professional skatboarding teams & view more details about that specific team.

## Tools Used

- [VSCode](https://code.visualstudio.com/): my main IDE used for the entire project
- [Yelp API](https://www.yelp.com/developers/documentation/v3/business_search): I needed a way to both get the location of a user & the location of skate parks near the user. I originally went with Google's API; however, was having API key errors getting it to work. Yelp's API is cleaner & easier to use in my opinion.
- [Foluim](https://python-visualization.github.io/folium/): to visualize the parks for the user, I ended up wanting to plot the points on a map, this is where folluim came in. Additionally, I wanted to plot the average skate park within each state, just incase Yelp didn't pick up any smaller parks.
- [SQLAlchemy](https://www.sqlalchemy.org/): SQLA is my prefered ORM. This is used to connect my database results for every city/state within the United States. I made my own API, which I had JavaScript fetch it's results.

## User Flow

1. You can find skate parks near you
2. You can browse professional skateboarding teams
3. If you want to begin skating, there are listed tricks I personally recommeded to get started with.
