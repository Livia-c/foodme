import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="livekitchen-subscription"
export default class extends Controller {
  static targets = ["orders"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "LivekitchenChannel"},
      // { received: data => console.log(data)}
      { received: data => this.ordersTarget.innerHTML = data }
    )
  }
}
