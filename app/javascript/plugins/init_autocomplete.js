import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search_location');
  if (addressInput) {
    places({ container: addressInput }).configure({
      type: 'city',
      language: 'en'
    });
  }
};


const load = () => {
  window.onload = function(){ document.getElementById("loading").style.display = "none" }

}

export { initAutocomplete };
export { load };
