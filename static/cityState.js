let stateSelect = document.getElementById('state');
let citySelect = document.getElementById('city');

stateSelect.onchange = function () {
  state = stateSelect.value;

  fetch(`/city/${state}`).then(function (res) {
    res.json().then(function (data) {
      let optionHTML = '';
      for (let city of data.cities) {
        optionHTML += `<option value="${city.state_id}">${city.city}</option>`;
      }
      citySelect.innerHTML = optionHTML;
    });
  });
};
