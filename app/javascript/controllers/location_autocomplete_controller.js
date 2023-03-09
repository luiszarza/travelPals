import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["location"]

  connect() {
    console.log("hello from Address autocomplete");
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "location"
    })
    this.geocoder.addTo(this.element)
  }

  disconnect() {
    this.geocoder.onRemove()
  }
}
