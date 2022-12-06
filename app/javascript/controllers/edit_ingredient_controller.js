import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-ingredient"
export default class extends Controller {
  static targets = ["infos", "form", "card"]

    displayForm(event) {
      this.formTargets.forEach(form => form.classList.add("d-none"))
      const ingredientId = event.currentTarget.dataset.ingredientId
      const form = this.formTargets.find((form) => form.attributes.id.value === `edit_ingredient_${ingredientId}`)
      form.classList.remove("d-none")
    }

  // connect() {
  //   console.log("test")
  // }

  update(event) {
    event.preventDefault()
    const formId = event.currentTarget.attributes.id.value
    const form = this.formTargets.find((form) => form.attributes.id.value === formId)
    const idArray = formId.split("_")
    const ingredientId = idArray[idArray.length - 1]
    const card = this.cardTargets.find(card => (card.dataset.ingredientId === ingredientId))
    const url = form.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(form)
    })
      .then(response => response.text())
      .then((data) => {
        card.outerHTML = data
      })
  }
}
