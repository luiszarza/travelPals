import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = {
    apiKey: String,
    location: String,
   }

  static targets = ["address", "latitude", "longitude"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      mapboxgl: mapboxgl,
      // types: "country,region,place,postcode,locality,neighborhood,address"
    })
    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
    this.geocoder._inputEl.placeholder = "Location";
    this.geocoder._inputEl.value = this.locationValue;
  }

  #setInputValue(event) {
    this.addressTarget.value = event.result["place_name"]
    this.longitudeTarget.value = event.result.geometry.coordinates[0]
    this.latitudeTarget.value = event.result.geometry.coordinates[1]
    console.log(event.result.geometry.coordinates);
  }

  #clearInputValue() {
    this.addressTarget.value = ""
  }
}


