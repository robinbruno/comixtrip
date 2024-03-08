// app/javascript/controllers/dialogue_input_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["title", "dialogue1", "dialogue2", "rectangleLeft", "rectangleRight" "dialogueInput"];


  updateTitle(event) {
    console.log("Updating title...");
    const title = event.target.value.trim(); // Get the value from the input field
    const comicTitleTarget = this.comicTitleTarget;

    // If title is empty, add d-none class to comic-title and remove its content
    if (title === "") {
      comicTitleTarget.classList.add("d-none");
      comicTitleTarget.innerHTML = "";
    } else {
      // Update the content of comic-title with the retrieved value
      comicTitleTarget.innerHTML = `<h2>${title}</h2>`;

      // Remove the d-none class from comic-title
      comicTitleTarget.classList.remove("d-none");
    }
  }

  updateDialogue1(event) {
    this.dialogue1Target.textContent = event.target.value;
    const rectangleLeftTarget = this.rectangleLeftTarget;
    // If title is empty, add d-none class to rectangle-left and remove its content
    if (title.trim() === "") {
      rectangleLeftTarget.classList.add("d-none");
      rectangleLeftTarget.textContent = "";
    } else {
      // Update the content of rectangle-left with the retrieved value
      rectangleLeftTarget.textContent = title;

      // Remove the d-none class from rectangle-left
      rectangleLeftTarget.classList.remove("d-none");
    }
  }

  updateDialogue2(event) {
    this.dialogue2Target.textContent = event.target.value;
  }
}
