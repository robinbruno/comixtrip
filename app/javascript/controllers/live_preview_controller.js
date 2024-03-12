import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="live-preview"
export default class extends Controller {
  static targets = ["rectangleLeft1", "rectangleRight1", "comicTitle", "rectangleLeft2", "rectangleRight2", "rectangleLeft3", "rectangleRight3", "vignetteLeft", "vignetteCenter", "vignetteRight"]

  connect() {
  }

  previewTitle(event) {
    this.comicTitleTarget.textContent = event.currentTarget.value;

  };

  previewText(event) {
    this.rectangleLeft1Target.textContent = event.currentTarget.value;

  };

  previewText01(event) {
    this.rectangleRight1Target.textContent = event.currentTarget.value;

  };

  previewText02(event) {
    this.rectangleLeft2Target.textContent = event.currentTarget.value;

  };

  previewText03(event) {
    this.rectangleRight2Target.textContent = event.currentTarget.value;

  };

  previewText04(event) {
    this.rectangleLeft3Target.textContent = event.currentTarget.value;

  };

  previewText05(event) {
    this.rectangleRight3Target.textContent = event.currentTarget.value;

  };
}
