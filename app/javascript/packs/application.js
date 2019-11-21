import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { flkty } from '../plugins/flickity';
import 'flickity/dist/flickity.css';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { load } from '../plugins/init_autocomplete';
import { on } from '../plugins/init_overlay';
import { off } from '../plugins/init_overlay';
import { closeCard } from '../plugins/init_closeTripCard';
import "../plugins/category_choice";
import "../plugins/flatpickr"

load();
initMapbox();
initAutocomplete();
closeCard();
on();
off();

