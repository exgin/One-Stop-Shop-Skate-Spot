function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (pos) {
      //You have your locaton here
      console.log('Latitude: ' + pos.coords.latitude + 'Longitude: ' + pos.coords.longitude);
    });
  } else {
    console.log('Geolocation is not supported by this browser.');
  }
}
