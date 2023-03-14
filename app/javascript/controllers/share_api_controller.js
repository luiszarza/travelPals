import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="share-api"
export default class extends Controller {

  static values = {
    title: String,
    url: String,
    description: String
  }

  connect() {
  }

  async share(e) {
    if (navigator.share) {

      try {
        await navigator.share({
          title: this.titleValue,
          url: this.urlValue,
          text: this.descriptionValue
        })
      } catch (err) {
        alert(`Couldn't share ${err}`);
      }
    } else {
      alert(`Not supported !!`);
    }
  }
}
