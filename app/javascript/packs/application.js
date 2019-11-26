import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '../plugins/user_category';
import { initMapbox } from '../plugins/init_mapbox';
// import { flkty } from '../plugins/flickity';
// import 'flickity/dist/flickity.css';
import homeScroll from '../plugins/scrollmagic'
import { initAutocomplete } from '../plugins/init_autocomplete';
import "../plugins/category_choice";
import "../plugins/flatpickr"
import { load } from '../plugins/loader';
import { initSortableDay1, initSortableDay2, initSortableDay3, initSortableDay4, initSortableDay5, initSortableDay6, initSortableDay7, initSortableDay8 } from '../plugins/init_sortable';
import { TxtType } from '../plugins/typewriterEffect';


if (document.body.id.match('pages_home')) {
  homeScroll();
}


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
initSortableDay3();
initSortableDay4();
initSortableDay5();
initSortableDay6();
initSortableDay7();
initSortableDay8();

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


initSortable();
const list = document.querySelector("#activities");

TxtType();
