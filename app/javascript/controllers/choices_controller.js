import { Controller } from "@hotwired/stimulus";
import Choices from "choices.js";

export default class extends Controller {
  connect() {
    this.choices = new Choices(this.element, {
      removeItemButton: true,
    });
  }

  occupation(e) {
    window.location = `/occupations/${e.detail.value}`;
  }

  industry(e) {
    if (e.detail.value === "") {
      window.location = `/top-green-jobs`;
    } else {
      window.location = `/top-green-jobs?industry=${e.detail.value}`;
    }
  }
}
