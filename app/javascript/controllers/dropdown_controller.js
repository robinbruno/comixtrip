import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['button']

  connect() {
  }

  triggerDropdown(event) {
    console.log('cheese');
        const selectElement = event.currentTarget.nextElementSibling;
        console.log(selectElement);
        if (selectElement.hidden) {
          selectElement.hidden = false;
          selectElement.click();
        } else {
          selectElement.hidden = true;
        }
  }
}



