import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="photo-preview"
export default class extends Controller {
  static targets = ["preview"]

  connect() {
    this.previewImageOnFileSelect()
  }

  previewImageOnFileSelect() {
    // we select the photo input
    const input = document.getElementById('photo-input');
    if (input) {
      // we add a listener to know when a new picture is uploaded
      input.addEventListener('change', (event) => {
        // we call the displayPreview function (who retrieve the image url and display it)
        this.displayPreview(input);
      })
    }
  }

  displayPreview(input) {
    if (input.files && input.files[0]) {
      const reader = new FileReader();
      reader.onload = (event) => {
        this.previewTarget.src = event.currentTarget.result;
      }
      reader.readAsDataURL(input.files[0])
      this.previewTarget.classList.remove('hidden');
    }
  }
}
