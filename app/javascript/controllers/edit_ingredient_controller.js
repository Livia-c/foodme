import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-ingredient"
export default class extends Controller {
  static targets = ["infos", "form", "card"]

    displayForm(event) {
      this.formTargets.forEach(form => form.classList.add("d-none"))
      const ingredientId = event.currentTarget.dataset.ingredientId
      console.log(event.currentTarget)
      const form = this.formTargets.find((form) => form.attributes.id.value === `edit_ingredient_${ingredientId}`)
      form.classList.remove("d-none")
    }

  // connect() {
  //   console.log("test")
  // }

  update(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        this.cardTarget.outerHTML = data
      })
      console.log("success")
  }
}
