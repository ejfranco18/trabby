import flickity from 'flickity';

const elem = document.querySelector('.main-carousel');
const flkty = new flickity( elem, {
  cellAlign: 'left',
  contain: true,
  wrapAround: true,
  lazyLoad: true
});

export { flkty }
