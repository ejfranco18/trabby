userCategories = document.querySelectorAll(".user-category-choices .form-check-input");
userCategories.forEach(element => {if (element.checked) {element.nextElementSibling.classList.add('active')}});

document.querySelectorAll(".user-category-choice").forEach((img) => {
  img.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("active");
  });
});
