document.addEventListener("DOMContentLoaded", function() {
  // Create const from _buro partial
  const inputField = document.querySelector('[id or class="ADD ID FROM KALEK"]');
  // Create const from _preview partial (first vignette)
  const emptyField = document.querySelector('.rectangle-left');

  // Check if inputField exists
  if (!inputField) {
    console.log("Input field not found");
  } else {
    // Add event listener to input field on _buro partial
    inputField.addEventListener('input', function() {
      // Get the value from _buro partial
      const inputValue = inputField.value;

      // Write the value to the empty field on _preview
      emptyField.textContent = inputValue;

      // Remove "d-none" class from emptyField
      emptyField.classList.remove("d-none");
    });
  }
});



// app/views/comic_trips/_buro.html
// app/views/comic_trips/_preview.html
// and the js file is here : app/javascript/controllers/preview.js
