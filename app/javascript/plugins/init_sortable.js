import Sortable from 'sortablejs';

const initSortableDay1 = () => {
  const el1 = document.getElementById('activitiesDay1');
  const sortable = Sortable.create(el1, {
    group: {
      name: 'el1',
      put: ['el1', 'el2', 'el3']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableDay2 = () => {
  const el2 = document.getElementById('activitiesDay2');
  const sortable = Sortable.create(el2, {
    group: {
      name: 'el2',
      put: ['el1', 'el2', 'el3']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableAddAnEvent = () => {
  const el3 = document.getElementById('activitiesAddAnEvent');
  const sortable = Sortable.create(el3, {
    group: {
      name: 'el3',
      put: ['el1', 'el2', 'el3']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

export { initSortableDay1 }

export { initSortableDay2 }

export { initSortableAddAnEvent }
