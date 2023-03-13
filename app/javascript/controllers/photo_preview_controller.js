import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="photo-preview"
export default class extends Controller {
  static targets = ["preview"]

  connect() {
    console.log('Hello from Photo Preview!')
    console.log("preview", this.previewTarget)
    this.previewImageOnFileSelect()
  }

  previewImageOnFileSelect() {
    console.log("preview method called")
    // we select the photo input
    const input = document.getElementById('photo-input');
    console.log("input", input)
    if (input) {
      // we add a listener to know when a new picture is uploaded
      input.addEventListener('change', (event) => {
        // we call the displayPreview function (who retrieve the image url and display it)
        console.log("input change", event)
        this.displayPreview(input);
      })
    }
  }

  displayPreview(input) {
    console.log("displayPreview method called");
    if (input.files && input.files[0]) {
      const reader = new FileReader();
      console.log("reader", reader);
      reader.onload = (event) => {
        console.log("reader onload", event);
        this.previewTarget.src = event.currentTarget.result;
      }
      reader.readAsDataURL(input.files[0])
      console.log("reader readAsDataURL", reader);
      this.previewTarget.classList.remove('hidden');
    }
  }
}
