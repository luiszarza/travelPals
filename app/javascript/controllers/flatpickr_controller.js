import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {

  static targets = [ "time" ]

  connect() {

    flatpickr(this.timeTarget, {
      disableMobile: true,
      enableTime: true,
      altInput: true,

    })
    this.timeTarget.insertAdjacentHTML('afterend', '<i class="booking-cal fa-solid fa-calendar-days"></i>');


    // new flatpickr(this.element, {
    //   enableTime: true,
    //   // more options available on the documentation!
    // });
  }
}
