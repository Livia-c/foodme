import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pay"
export default class extends Controller {
  static values = {key: String, sessionId: String}
  connect() {
    console.log("hello2");
    console.log(this.keyValue);
  }
  click() {
      const stripe = Stripe(this.keyValue);
      stripe.redirectToCheckout({
        sessionId: this.sessionIdValue
      });
  }
}
