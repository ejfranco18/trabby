import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { on } from '../plugins/init_overlay';
import { off } from '../plugins/init_overlay';
import { closeCard } from '../plugins/init_closeTripCard';
import "../plugins/category_choice";
import "../plugins/flatpickr"

initMapbox();
initAutocomplete();
closeCard();
on();
off();

