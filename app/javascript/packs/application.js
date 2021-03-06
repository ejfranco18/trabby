import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '../plugins/user_category';
import { initMapbox } from '../plugins/init_mapbox';
// import { homeScroll } from '../plugins/scrollmagic'
import { initAutocomplete } from '../plugins/init_autocomplete';
import "../plugins/category_choice";
import "../plugins/flatpickr"
import { load } from '../plugins/loader';
import { initSortableDay } from '../plugins/init_sortable';
import { TxtType } from '../plugins/typewriterEffect';

if (document.body.id === 'pages_home') {
  const animForm = document.querySelector("#animTrigger");
  animForm.addEventListener("submit", (event) => {
    event.preventDefault()
    load();
    setTimeout((event) => {
      animForm.submit();
    }, 4000)
  })
}

initMapbox();

if (document.body.id === 'places_index' && document.querySelector("#animTrigger")) {
  const animCard = document.querySelector("#animTrigger");
  animCard.addEventListener("click", (event) => {
    event.preventDefault()
    load();
    setTimeout((event) => {
      animCard.click();
    }, 6000)
  })
}


initAutocomplete();


initSortableDay();

TxtType();


// const animLink = document.querySelector(".animTrigger");

// animLink.addEventListener("click", (event) => {
//   event.preventDefault()
//   load();
//   setTimeout((event) => {
//     animLink.click();
//   }, 2000)
// })


initSortable();
const list = document.querySelector("#activities");


