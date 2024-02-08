import { Application } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
