import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
  }

  updateNavbar() {
    if (window.scrollY >= document.querySelector(".navbar").offsetHeight) {
      this.element.classList.add("navbar-light-green")
    } else {
      this.element.classList.remove("navbar-light-green")
    }
  }
}
