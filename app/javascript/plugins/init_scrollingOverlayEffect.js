var arrayOfDivs = $(".scroll");
var scrollOffset = 0;
var sHeight = 0;
let scrolledHeight = 0;

$(document).ready(function() {

sHeight = $('.section').height();
var activeIndex = 0;

$('body').css({"height" : !arrayOfDivs.length ? sHeight : sHeight*arrayOfDivs.length});
for (let i = 0; i < arrayOfDivs.length; i++) {
  $(arrayOfDivs[i]).css({"top" : sHeight*i});
}


$(document).on('scroll', (e) => {
  var newHeight = $(document).scrollTop();

  offsetScroll(-(newHeight-scrolledHeight));
  activeIndex = Math.floor((newHeight/sHeight*arrayOfDivs.length)/arrayOfDivs.length);
  $(arrayOfDivs).removeClass('active');
  if(!$(arrayOfDivs[activeIndex]).hasClass('active')) $(arrayOfDivs[activeIndex]).addClass('active');

  console.log(activeIndex);

 var currentDegree = sHeight*activeIndex;

  var offsetUpper = currentDegree+scrollOffset;
  var opacity = offsetUpper/sHeight;

  if(opacity <0) opacity = -opacity;

  $(arrayOfDivs[activeIndex+1]).find('.overlay').css({"opacity" : 1-opacity});
  console.log("opacity: "+opacity);
    $(arrayOfDivs[activeIndex]).find('.overlay').css({"opacity" : opacity});
  console.log(offsetUpper+'px');

  scrolledHeight = newHeight;

});

})

function offsetScroll(x)
{
  scrollOffset += x;
  for (let i = 0; i < arrayOfDivs.length; i++) {
    $(arrayOfDivs[i]).css({"top" : sHeight*i+scrollOffset});
  }
}
