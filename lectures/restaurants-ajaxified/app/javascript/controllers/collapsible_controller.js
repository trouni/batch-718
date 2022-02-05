import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['hidden']

  connect() {
    this.hiddenTarget.style.height = 0
    this.hiddenTarget.style.overflow = 'hidden'
    this.hiddenTarget.style.transition = 'height 500ms ease-out'
  }

  // action
  expand(event) {
    event.target.style.display = 'none'
    this.hiddenTarget.style.height = '150px'
  }
}