document.querySelectorAll(".category-choice").forEach((img) => {
  img.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("active");
  });
});
