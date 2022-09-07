import { Application } from "@hotwired/stimulus" /* eslint-disable-line */

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }