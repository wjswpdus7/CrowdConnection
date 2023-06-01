(function() {
  "use strict";

  const form = document.querySelector("#form__wrap");
  const checkBoxes = document.querySelectorAll(".input__check input");
  const submitButton = document.getElementById("success_button");
  var check = false;
  
	  if (button.disabled == true){
	  
	  return check(true)
  }
  
  const agreements = {
    termsOfService2: false
  };

  form.addEventListener("submit", (e) => e.preventDefault());

  checkBoxes.forEach((item) => item.addEventListener("input", toggleCheckbox));


  function toggleCheckbox(e) {
    const { checked, id } = e.target;
    agreements[id] = checked;
    this.parentNode.classList.toggle("active");
    toggleSubmitButton();
  }
  
 

 function toggleSubmitButton() {
  const { termsOfService2} = agreements;
  if (termsOfService2 && check ) {
    submitButton.disabled = false;
  } else {
    submitButton.disabled = true;
  }
}

	  
})();

