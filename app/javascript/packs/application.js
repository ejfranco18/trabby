import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { flkty } from '../plugins/flickity';
import 'flickity/dist/flickity.css';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { on } from '../plugins/init_overlay';
import { off } from '../plugins/init_overlay';
import { closeCard } from '../plugins/init_closeTripCard';
import "../plugins/category_choice";
import "../plugins/flatpickr"


// import { load } from '../plugins/loader';

initAutocomplete();

// const animForm = document.querySelector("#animTrigger");

// animForm.addEventListener("submit", (event) => {
//   event.preventDefault()
//   load();
//   setTimeout((event) => {
//     animForm.submit();
//   }, 3000)
// })


initMapbox();
closeCard();
on();
off();



