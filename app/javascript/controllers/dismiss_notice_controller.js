import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dismiss-notice"
export default class extends Controller {
  connect() {
    const alert = this.element

    setTimeout(() => {
      alert.classList.add("closed_alert");
    }, 4000);
  }
}
