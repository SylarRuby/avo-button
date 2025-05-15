import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button"]
  static values = {
    pressed: { type: Boolean, default: false },
    disabled: { type: Boolean, default: false }
  }

  connect() {
    this.updateAriaAttributes()
  }

  toggle() {
    if (!this.disabledValue) {
      this.pressedValue = true
      this.updateAriaAttributes()
    }
  }

  disable() {
    this.disabledValue = true
    this.updateAriaAttributes()
  }

  enable() {
    this.disabledValue = false
    this.updateAriaAttributes()
  }

  updateAriaAttributes() {
    this.buttonTarget.setAttribute('aria-pressed', this.pressedValue.toString())
    this.buttonTarget.setAttribute('aria-disabled', this.disabledValue)
    
    if (this.disabledValue) {
      this.buttonTarget.setAttribute('disabled', '')
      this.buttonTarget.classList.add('opacity-50', 'cursor-not-allowed')
    } else {
      this.buttonTarget.removeAttribute('disabled')
      this.buttonTarget.classList.remove('opacity-50', 'cursor-not-allowed')
    }
  }
} 