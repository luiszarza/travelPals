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
    this.#getUserLocation();
    // disable map zoom when using scroll
    this.map.scrollZoom.disable();
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

  #fitMapToCenter(coordinates) {
    const bounds = new mapboxgl.LngLatBounds()
    if (coordinates === {}) {
      bounds.extend([115.1470086, -8.6594826])
    }
    bounds.extend([ coordinates.longitude, coordinates.latitude ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 12, duration: 2000 })
  }

  #getUserLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          // this.map.setCenter([ position.coords.longitude,  position.coords.latitude]);
          this.#addMarkersToMap();
          this.#fitMapToCenter(position.coords);
        },
        () => {
          console.log('Unable to get user location');
          this.#addMarkersToMap();
          this.#fitMapToCenter({});
        }
      )
    } else {
      console.log('Geolocation is not supported by this browser.');
      this.#addMarkersToMap();
      this.#fitMapToCenter({});
    }
  }
}
