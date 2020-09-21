// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

require("@vizuaalog/bulmajs")

import { config, library, dom } from '@fortawesome/fontawesome-svg-core'
import { faShare as fasFaShare } from '@fortawesome/free-solid-svg-icons' // ES Module "as" syntax
import { faCheck as fasFaCheck } from '@fortawesome/free-solid-svg-icons' // ES Module "as" syntax
import { faTimes as fasFaTimes } from '@fortawesome/free-solid-svg-icons' // ES Module "as" syntax
config.mutateApproach = 'sync'
library.add(fasFaShare, fasFaCheck, fasFaTimes)
dom.watch()

import '../stylesheets/application'
