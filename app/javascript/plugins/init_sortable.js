import Sortable from 'sortablejs';

const initSortableDay1 = () => {
  const el1 = document.getElementById('activitiesDay1');
  const sortable = Sortable.create(el1, {
    filter: ".js-remove, .js-edit",
    onFilter: function (evt) {
      const item = evt.item,
        ctrl = evt.target;
      if (Sortable.utils.is(ctrl, ".js-remove")) {  // Click on remove button
        item.parentNode.removeChild(item); // remove sortable item
      }
      else if (Sortable.utils.is(ctrl, ".js-edit")) {  // Click on edit link
        // ...
      }
  },
    group: {
      name: 'el1',
      put: ['el1', 'el2', 'el3', 'el4', 'el5', 'el6', 'el7', 'el8']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableDay2 = () => {
  const el2 = document.getElementById('activitiesDay2');
  const sortable = Sortable.create(el2, {
    filter: ".js-remove, .js-edit",
    onFilter: function (evt) {
      const item = evt.item,
        ctrl = evt.target;
      if (Sortable.utils.is(ctrl, ".js-remove")) {  // Click on remove button
        item.parentNode.removeChild(item); // remove sortable item
      }
      else if (Sortable.utils.is(ctrl, ".js-edit")) {  // Click on edit link
        // ...
      }
  },
    group: {
      name: 'el2',
      put: ['el1', 'el2', 'el3', 'el4', 'el5', 'el6', 'el7', 'el8']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableDay3 = () => {
  const el3 = document.getElementById('activitiesDay3');
  const sortable = Sortable.create(el3, {
    filter: ".js-remove, .js-edit",
    onFilter: function (evt) {
      const item = evt.item,
        ctrl = evt.target;
      if (Sortable.utils.is(ctrl, ".js-remove")) {  // Click on remove button
        item.parentNode.removeChild(item); // remove sortable item
      }
      else if (Sortable.utils.is(ctrl, ".js-edit")) {  // Click on edit link
        // ...
      }
  },
    group: {
      name: 'el3',
      put: ['el1', 'el2', 'el3', 'el4', 'el5', 'el6', 'el7', 'el8']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableDay4 = () => {
  const el4 = document.getElementById('activitiesDay4');
  const sortable = Sortable.create(el4, {
    filter: ".js-remove, .js-edit",
    onFilter: function (evt) {
      const item = evt.item,
        ctrl = evt.target;
      if (Sortable.utils.is(ctrl, ".js-remove")) {  // Click on remove button
        item.parentNode.removeChild(item); // remove sortable item
      }
      else if (Sortable.utils.is(ctrl, ".js-edit")) {  // Click on edit link
        // ...
      }
  },
    group: {
      name: 'el4',
      put: ['el1', 'el2', 'el3', 'el4', 'el5', 'el6', 'el7', 'el8']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableDay5 = () => {
  const el5 = document.getElementById('activitiesDay5');
  const sortable = Sortable.create(el5, {
    filter: ".js-remove, .js-edit",
    onFilter: function (evt) {
      const item = evt.item,
        ctrl = evt.target;
      if (Sortable.utils.is(ctrl, ".js-remove")) {  // Click on remove button
        item.parentNode.removeChild(item); // remove sortable item
      }
      else if (Sortable.utils.is(ctrl, ".js-edit")) {  // Click on edit link
        // ...
      }
  },
    group: {
      name: 'el5',
      put: ['el1', 'el2', 'el3', 'el4', 'el5', 'el6', 'el7', 'el8']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableDay6 = () => {
  const el6 = document.getElementById('activitiesDay6');
  const sortable = Sortable.create(el6, {
    filter: ".js-remove, .js-edit",
    onFilter: function (evt) {
      const item = evt.item,
        ctrl = evt.target;
      if (Sortable.utils.is(ctrl, ".js-remove")) {  // Click on remove button
        item.parentNode.removeChild(item); // remove sortable item
      }
      else if (Sortable.utils.is(ctrl, ".js-edit")) {  // Click on edit link
        // ...
      }
  },
    group: {
      name: 'el6',
      put: ['el1', 'el2', 'el3', 'el4', 'el5', 'el6', 'el7', 'el8']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableDay7 = () => {
  const el7 = document.getElementById('activitiesDay7');
  const sortable = Sortable.create(el7, {
    filter: ".js-remove, .js-edit",
    onFilter: function (evt) {
      const item = evt.item,
        ctrl = evt.target;
      if (Sortable.utils.is(ctrl, ".js-remove")) {  // Click on remove button
        item.parentNode.removeChild(item); // remove sortable item
      }
      else if (Sortable.utils.is(ctrl, ".js-edit")) {  // Click on edit link
        // ...
      }
  },
    group: {
      name: 'el7',
      put: ['el1', 'el2', 'el3', 'el4', 'el5', 'el6', 'el7', 'el8']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

const initSortableDay8 = () => {
  const el8 = document.getElementById('activitiesDay8');
  const sortable = Sortable.create(el8, {
    filter: ".js-remove, .js-edit",
    onFilter: function (evt) {
      const item = evt.item,
        ctrl = evt.target;
      if (Sortable.utils.is(ctrl, ".js-remove")) {  // Click on remove button
        item.parentNode.removeChild(item); // remove sortable item
      }
      else if (Sortable.utils.is(ctrl, ".js-edit")) {  // Click on edit link
        // ...
      }
  },
    group: {
      name: 'el8',
      put: ['el1', 'el2', 'el3', 'el4', 'el5', 'el6', 'el7', 'el8']
    },
    animation: 150,
    ghostClass: "ghost"
  });
}

export { initSortableDay1, initSortableDay2, initSortableDay3, initSortableDay4, initSortableDay5, initSortableDay6, initSortableDay7, initSortableDay8  }

