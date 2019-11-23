// src/plugins/init_sortable.js
import Sortable from 'sortablejs';

const initSortable = () => {
  const el = document.getElementById('activities');
  const sortable = Sortable.create(el, {
    animation: 150,
    ghostClass: "ghost"
  });
}

export { initSortable }
