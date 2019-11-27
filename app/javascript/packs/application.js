import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '../plugins/user_category';
import { initMapbox } from '../plugins/init_mapbox';
// import { homeScroll } from '../plugins/scrollmagic'
import { initAutocomplete } from '../plugins/init_autocomplete';
import "../plugins/category_choice";
import "../plugins/flatpickr"
import { load } from '../plugins/loader';
import { initSortableDay1, initSortableDay2, initSortableDay3, initSortableDay4, initSortableDay5, initSortableDay6, initSortableDay7, initSortableDay8 } from '../plugins/init_sortable';
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



initAutocomplete();
initMapbox();

initSortableDay1();
initSortableDay2();
initSortableDay3();
initSortableDay4();
initSortableDay5();
initSortableDay6();
initSortableDay7();
initSortableDay8();
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


