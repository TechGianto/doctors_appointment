import { Controller } from "@hotwired/stimulus"; /* eslint-disable-line */

export default class extends Controller {
  connect() {
    this.element.textContent = "SideBar!";
  }
}
