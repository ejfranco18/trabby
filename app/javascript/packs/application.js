import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { flkty } from '../plugins/flickity';
import 'flickity/dist/flickity.css';
import '../plugins/scrollmagic'
import { initAutocomplete } from '../plugins/init_autocomplete';
import { on } from '../plugins/init_overlay';
import { off } from '../plugins/init_overlay';
import { closeCard } from '../plugins/init_closeTripCard';
import "../plugins/category_choice";
import "../plugins/flatpickr"
import { load } from '../plugins/loader';

const showModal = () => {
  $('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
  })
}

initAutocomplete();
initMapbox();
const animForm = document.querySelector("#animTrigger");

animForm.addEventListener("submit", (event) => {
  event.preventDefault()
  load();
  setTimeout((event) => {
    animForm.submit();
  }, 2000)
})

// const animLink = document.querySelector(".animTrigger");

// animLink.addEventListener("click", (event) => {
//   event.preventDefault()
//   load();
//   setTimeout((event) => {
//     animLink.click();
//   }, 2000)
// })


closeCard();
on();
off();



