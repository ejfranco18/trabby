const closeCard = () => {
  console.log("edasfd")
  const yourTripCard = document.querySelector(".your_trip_card");
  document.getElementById("close_card").addEventListener("click", function(){
    yourTripCard.style.display = 'none';
  });
}

export { closeCard };

