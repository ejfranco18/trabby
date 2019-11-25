console.log("dddd")

userCategories = document.querySelectorAll(".category-choices .form-check-input");

userCategories.forEach(element => {if (element.checked) {element.nextElementSibling.classList.add('active')}});
