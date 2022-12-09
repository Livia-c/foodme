import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkout"
export default class extends Controller {
  static values = {authenticityToken: String}
  static targets = ["btn"]

  connect() {
    console.log("connect26");
  }

  add(event) {
    event.preventDefault();
    const url = event.currentTarget.attributes.href.value
    this.closeButton = event.currentTarget.closest(".modal").querySelector(".btn-close")
    fetch(url, {
      method: "POST",
      headers: { "Accept": "application/json",
      "X-CSRF-Token": event.currentTarget.attributes.token.value}})
    .then(response => response.json())
    .then((data) => {
      this.btnTarget.innerHTML = data.button
      this.closeButton.click()
    })
  }
}
