import Sortable from 'sortablejs';

const initSortableDay = () => {
  const activities = document.querySelectorAll('.activity-column');

  activities.forEach(activity => {
    Sortable.create(activity, {
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
      onEnd: evt => {
        var itemEl = evt.item;  // dragged HTMLElement
        evt.to;    // target list
        evt.from;  // previous list
        evt.oldIndex;  // element's old index within old parent
        evt.newIndex;  // element's new index within new parent
        evt.oldDraggableIndex; // element's old index within old parent, only counting draggable elements
        evt.newDraggableIndex; // element's new index within new parent, only counting draggable elements
        evt.clone // the clone element
        evt.pullMode;  // when item is in another sortable: `"clone"` if cloning, `true` if moving
  },

      group: {
        name: activity.getAttribute("id"),
        put: Array.from(activities).map(activity => activity.getAttribute("id"))
      },
      animation: 150,
      ghostClass: "ghost"
    });
  });
}

export { initSortableDay }
