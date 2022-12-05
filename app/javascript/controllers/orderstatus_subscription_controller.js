import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { orderstatusId: Number }
  static targets = ["status"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "OrderstatusChannel", id: this.orderstatusIdValue },
      { received: data => this.statusTarget.innerHTML = data }
    )
  }
}
