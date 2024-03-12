import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="live-preview"
export default class extends Controller {
  static targets = [
    "rectangleLeft1",
    "rectangleRight1",
    "comicTitle",
    "rectangleLeft2",
    "rectangleRight2",
    "rectangleLeft3",
    "rectangleRight3",
    "vignetteLeft",
    "vignetteCenter",
    "vignetteRight",
    "background1",
    "background2",
    "background3",
    "vig1char1",
    "vig1char2",
    "vig2char1",
    "vig2char2",
    "vig3char1",
    "vig3char2",
    "vig1Background",
    "vig2Background",
    "vig3Background",
    "vig1Char1",
    "vig1Char2",
    "vig2Char1",
    "vig2Char2",
    "vig3Char1",
    "vig3Char2",
  ]

  connect() {
  }

  openModal(event) {
    console.log(event.currentTarget.dataset.button);
    this[event.currentTarget.dataset.button + 'Target'].classList.remove('d-none');
  }

  setVig1Background(event) {
    this.vig1BackgroundTarget.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.background1Target.classList.add('d-none');
  };

  setVig1Char1(event) {
    this.vig1Char1Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig1char1Target.classList.add('d-none');
  };

  setVig1Char2(event) {
    this.vig1Char2Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig1char2Target.classList.add('d-none');
  };

  setVig2Background(event) {
    this.vig2BackgroundTarget.value = event.currentTarget.dataset.imagename
    this.background2Target.classList.add('d-none');
  };

  setVig2Char1(event) {
    this.vig2Char1Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig2char1Target.classList.add('d-none');
  };

  setVig2Char2(event) {
    this.vig2Char2Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig2char2Target.classList.add('d-none');
  };
  setVig3Background(event) {
    this.vig3BackgroundTarget.value = event.currentTarget.dataset.imagename
    this.background3Target.classList.add('d-none');
  };

  setVig3Char1(event) {
    this.vig3Char1Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig3char1Target.classList.add('d-none');
  };

  setVig3Char2(event) {
    this.vig3Char2Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig3char2Target.classList.add('d-none');
  };

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
