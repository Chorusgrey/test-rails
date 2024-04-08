import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price-calculation"
export default class extends Controller {
  static targets = [ "startDate", "endDate", "totalDay", "pricePerDay" ]
  connect() {
    console.log('Price Calculation Controller connected')
  }
  calculate(event) {
    const startDate = new Date(this.startDateTarget.value)
    const endDate = new Date(this.endDateTarget.value)
    const days = (endDate - startDate) / (1000 * 60 * 60 * 24) + 1
    const pricePerDay = parseInt(this.pricePerDayTarget.innerText)
    this.totalDayTarget.value = days * pricePerDay

  }
}
