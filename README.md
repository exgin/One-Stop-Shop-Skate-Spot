# One-Stop-Skate-Spot

This web application condenses anything to do with skating. For the new beginner skater, or for a more intermediate skater, this web application has
it!

## Live Gif of One-Stop-Skate-Spot

![Demo](static/images/websitedemo.gif)

Demo Link: https://one-stop-skate-spot-exgin.herokuapp.com/home

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

- Users can log in/ register to add their own park!
- Users can like other parks other users posted
- Lists starting skate tricks for beginners.
- Able to view up to 7 skateboarding parks near your location.
- See professional skateboarding teams & view more details about that specific team.

## Tools Used

- [VSCode](https://code.visualstudio.com/): my main IDE used for the entire project
- [Yelp API](https://www.yelp.com/developers/documentation/v3/business_search): I needed a way to both get the location of a user & the location of
  skate parks near the user. I originally went with Google's API; however, I was having API key errors getting it to work. Yelp's API is cleaner &
  easier to use in my opinion.
- [Foluim](https://python-visualization.github.io/folium/): to visualize the parks for the user, I ended up wanting to plot the points on a map, this
  is where folluim came in. Additionally, I wanted to plot the average skate park within each state, just incase Yelp didn't pick up any smaller
  parks.
- [SQLAlchemy](https://www.sqlalchemy.org/): SQLA is my prefered ORM. This is used to connect my database results for every city/state within the
  United States. I made my own API, which I had JavaScript fetch its results.

## User Flow

1. Users can find skate parks near you
2. Users can browse professional skateboarding teams
3. If a user want to begin skating, there are listed tricks I personally recommeded to get started with.

## FAQ

- How much does it cost for a complete skatebaord?
  - A normal complete skateboard costs on average \$120 to start off. I would <strong>highly recommend against</strong> buying a 'Walmart board'.
    They're cheap and can actually hurt you more than buying a stable skateboard. You can purchase boards from pro team brands listed on my website to
    support them.
- How long does it take to get 'good' at skateboarding?
  - There is not steady timeline to getting good. Everything is relative in skateboarding. Just keep going & you'll eventually get to a point where
    you consider yourself decent!
- Where is AR, Arkansas at on the map?
  - Yelp's API didn't seem to like that state. Until then, I will update the site when that bug is fixed on their end.
