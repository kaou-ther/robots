import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = [ "togglableElementOne" ]
  connect() {
    console.log("hello from toggle controller")
    console.log(this.togglableElementOneTarget)
  }
  fire() {
    if (current_user) {
      this.togglableElementOneTarget.classList.toggle("d-none")
    }
  }
}
