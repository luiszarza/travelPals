import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    info: Object
  }

  static targets = [ "box" ]

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    console.log(this.infoValue)

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    console.log("Hello from new maps controller index");
    this.#addMarkersToMap()
    this.#fitMapToCenter()
    // disable map zoom when using scroll
    this.map.scrollZoom.disable();
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker({ "color": "#FF9778" })
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

  #fitMapToCenter() {
    // const bounds = new mapboxgl.LngLatBounds()
    // bounds.extend([115.1470086, -8.6594826])
    // this.map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 3000 })

    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

}
