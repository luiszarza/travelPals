import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    info: Object
  }

  static targets = [ "box", "card" ]

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

  #arrangeCards(coordinates) {
    this.cardTargets.forEach((card) => {
      const distance = this.#getDistanceFromLatLonInKm(coordinates.latitude, coordinates.longitude, card.dataset.lat, card.dataset.lng);
      card.dataset.distance = distance;
    })
    const sortedCards = this.cardTargets.sort((a, b) => a.dataset.distance - b.dataset.distance)
    sortedCards.forEach((card) => {
      this.boxTarget.appendChild(card);
    })
  }

  #getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2) {
    var R = 6371; // Radius of the earth in km
    var dLat = this.#deg2rad(lat2-lat1);  // deg2rad below
    var dLon = this.#deg2rad(lon2-lon1);
    var a =
      Math.sin(dLat/2) * Math.sin(dLat/2) +
      Math.cos(this.#deg2rad(lat1)) * Math.cos(this.#deg2rad(lat2)) *
      Math.sin(dLon/2) * Math.sin(dLon/2)
      ;
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    var d = R * c; // Distance in km
    return d;
  }

  #deg2rad(deg) {
    return deg *(Math.PI/180)
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
          this.#arrangeCards(position.coords);
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
