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
    "vig3Char2", // BURO
    "vig1BackgroundImage", // KALEK
    "vig1Char1Image", // KALEK
    "vig1Char2Image",
    "vig2BackgroundImage",
    "vig2Char1Image",
    "vig2Char2Image",
    "vig3BackgroundImage",
    "vig3Char1Image",
    "vig3Char2Image", // KALEK (ajouter)
  ]

  connect() {
  }

  openModal(event) {
    console.log(event.currentTarget.dataset.button);
    this[event.currentTarget.dataset.button + 'Target'].classList.remove('d-none');
  }

  setVig1Background(event) {
    // Sets the name of the image we click as value of the corresponding hidden input + hides gallery
    this.vig1BackgroundTarget.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.background1Target.classList.add('d-none');

    // KALEK: get image url and display it in the preview
    const image_url = event.currentTarget.querySelector("img").src;
    this.vig1BackgroundImageTarget.src = image_url;
  };

  setVig1Char1(event) {
    this.vig1Char1Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig1char1Target.classList.add('d-none');

    // KALEK: get image url and display it in the preview
    const image_url = event.currentTarget.querySelector("img").src;
    this.vig1Char1ImageTarget.src = image_url;
  };

  setVig1Char2(event) {
    this.vig1Char2Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig1char2Target.classList.add('d-none');

    // KALEK: get image url and display it in the preview
    const image_url = event.currentTarget.querySelector("img").src;
    this.vig1Char2ImageTarget.src = image_url;
  };

  setVig2Background(event) {
    this.vig2BackgroundTarget.value = event.currentTarget.dataset.imagename
    this.background2Target.classList.add('d-none');

    const image_url = event.currentTarget.querySelector("img").src;
    this.vig2BackgroundImageTarget.src = image_url;
  };

  setVig2Char1(event) {
    this.vig2Char1Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig2char1Target.classList.add('d-none');

    const image_url = event.currentTarget.querySelector("img").src;
    this.vig2Char1ImageTarget.src = image_url;
  };

  setVig2Char2(event) {
    this.vig2Char2Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig2char2Target.classList.add('d-none');

    const image_url = event.currentTarget.querySelector("img").src;
    this.vig2Char2ImageTarget.src = image_url;
  };
  setVig3Background(event) {
    this.vig3BackgroundTarget.value = event.currentTarget.dataset.imagename
    this.background3Target.classList.add('d-none');

    const image_url = event.currentTarget.querySelector("img").src;
    this.vig3BackgroundImageTarget.src = image_url;
  };

  setVig3Char1(event) {
    this.vig3Char1Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig3char1Target.classList.add('d-none');

    const image_url = event.currentTarget.querySelector("img").src;
    this.vig3Char1ImageTarget.src = image_url;
  };

  setVig3Char2(event) {
    this.vig3Char2Target.value = event.currentTarget.dataset.imagename //id.of.the.image.we.click};
    this.vig3char2Target.classList.add('d-none');

    const image_url = event.currentTarget.querySelector("img").src;
    this.vig3Char2ImageTarget.src = image_url;
  };

  previewTitle(event) {
    this.comicTitleTarget.textContent = event.currentTarget.value;

  };

  previewText(event) {
    this.rectangleLeft1Target.textContent = event.currentTarget.value;
    if (event.currentTarget.value === "") {
      this.rectangleLeft1Target.classList.add("d-none")
    } else {
      this.rectangleLeft1Target.classList.remove("d-none")
    }
  };

  previewText01(event) {
    this.rectangleRight1Target.textContent = event.currentTarget.value;
    if (event.currentTarget.value === "") {
      this.rectangleRight1Target.classList.add("d-none")
    } else {
      this.rectangleRight1Target.classList.remove("d-none")
    }
  };

  previewText02(event) {
    this.rectangleLeft2Target.textContent = event.currentTarget.value;
    if (event.currentTarget.value === "") {
      this.rectangleLeft2Target.classList.add("d-none")
    } else {
      this.rectangleLeft2Target.classList.remove("d-none")
    }
  };

  previewText03(event) {
    this.rectangleRight2Target.textContent = event.currentTarget.value;
    if (event.currentTarget.value === "") {
      this.rectangleRight2Target.classList.add("d-none")
    } else {
      this.rectangleRight2Target.classList.remove("d-none")
    }
  };

  previewText04(event) {
    this.rectangleLeft3Target.textContent = event.currentTarget.value;
    if (event.currentTarget.value === "") {
      this.rectangleLeft3Target.classList.add("d-none")
    } else {
      this.rectangleLeft3Target.classList.remove("d-none")
    }
  };

  previewText05(event) {
    this.rectangleRight3Target.textContent = event.currentTarget.value;
    if (event.currentTarget.value === "") {
      this.rectangleRight3Target.classList.add("d-none")
    } else {
      this.rectangleRight3Target.classList.remove("d-none")
    }
  };
}
