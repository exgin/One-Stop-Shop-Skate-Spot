let stateSelect = document.getElementById('state');
let citySelect = document.getElementById('city');

stateSelect.onchange = function () {
  state = stateSelect.value;

  fetch(`/city/${state}`).then(function (res) {
    res.json().then(function (data) {
      let sortedCities = data.cities.sort((a, b) => (a.city > b.city ? 1 : -1));

      let optionHTML = '';
      for (let city of sortedCities) {
        optionHTML += `<option value="${city.state_id}">${city.city}</option>`;
      }
      citySelect.innerHTML = optionHTML;
    });
  });
};
