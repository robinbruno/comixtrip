import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="live-preview"
export default class extends Controller {
  static targets = ["rectangleLeft1"]

  connect() {
  }

  previewText(event) {
      this.rectangleLeft1Target.textContent = event.currentTarget.value;
    };
  }
