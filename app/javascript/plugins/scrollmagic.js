import ScrollMagic from 'scrollmagic'


// init controller
var controller = new ScrollMagic.Controller();

// // create a scene
// new ScrollMagic.Scene({
//     duration: 100, // the scene should last for a scroll distance of 100px
//     offset: 50 // start this scene after scrolling for 50px
// })
//     .setPin('#mainimage') // pins the element for the the scene's duration
//     .addTo(controller); // assign the scene to the controller



var scene = new ScrollMagic.Scene({triggerElement: "#trigger1"})
        // trigger animation by adding a css class
        .setClassToggle(".justify-content-between", "visible")
        .addTo(controller);

// new ScrollMagic.Scene({
//           triggerElement: "#trigger1",
//           triggerHook: 0.9, // show, when scrolled 10% into view
//           duration: "80%", // hide 10% before exiting view (80% + 10% from bottom)
//           offset: 50 // move trigger to center of element
//         })
//         .setClassToggle("#reveal1", "visible") // add class to reveal

//         .addTo(controller);

