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


    this.#addMarkersToMap()
    this.#fitMapToCenter()
    this.#flyToActivity()
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

  #fitMapToCenter() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([115.1470086, -8.6594826])

    this.map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 3000 })
  }

  #flyToActivity() {
    let activeActivityName = 'Yoga-Retreat-in-Bali'
    const setActiveActivity = (activityName) => {
      if (activityName == activeActivityName) {
        return
      }

      this.map.flyTo(this.infoValue[activityName])

      activeActivityName = activityName;
    }

    const isElementOnScreen = (id) => {
      const element = document.getElementById(id)
      const bounds = element.getBoundingClientRect();
      return bounds.right < window.innerWidth && bounds.left > 0;
    }

    window.onclick = (e) => {
      setActiveActivity(e.target.id)
      // for (const activityName in this.infoValue) {
      //   if (isElementOnScreen(activityName)) {
      //     setActiveActivity(activityName)
      //     break;
      //   }
      // }
    }
  }
}
