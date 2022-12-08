import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pay"
export default class extends Controller {
  static values = {key: String, sessionId: String}
  connect() {
  // }

  // !!!!!!
  // this code is obsolete, we switched to rails redirection in the controller

  // click() {
  //     const stripe = Stripe(this.keyValue);
  //     stripe.redirectToCheckout({
  //       sessionId: this.sessionIdValue
  //     });
  }
}
