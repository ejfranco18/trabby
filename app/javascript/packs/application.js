import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { flkty } from '../plugins/flickity';
import 'flickity/dist/flickity.css';
import '../plugins/scrollmagic'
import { initAutocomplete } from '../plugins/init_autocomplete';
import { closeCard } from '../plugins/init_closeTripCard';
import "../plugins/category_choice";
import "../plugins/flatpickr"
import { load } from '../plugins/loader';
import { initSortableDay1 } from '../plugins/init_sortable';
import { initSortableDay2 } from '../plugins/init_sortable';
import { initSortableAddAnEvent } from '../plugins/init_sortable';
import { TxtType } from '../plugins/typewriterEffect';

const showModal = () => {
  $('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
  })
}

initAutocomplete();
initMapbox();
const animForm = document.querySelector("#animTrigger");
initSortableDay1();
initSortableDay2();
initSortableAddAnEvent();

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


TxtType();
