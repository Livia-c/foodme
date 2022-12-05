import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="delete-from-list"
export default class extends Controller {
  static targets = ["link"]
  static values = {authenticityToken: String}

  connect() {
  }

  delete(event) {
    event.preventDefault()
   const url = event.currentTarget.attributes.href.value

    fetch(url, {method: "DELETE", headers: {"X-CSRF-Token": this.authenticityTokenValue}})
      .then((response) => {
        if (response.ok) {
          this.element.remove();
        } else {
          this.element.text = "Oops, something went wrong"
        }
      })
  }
}
