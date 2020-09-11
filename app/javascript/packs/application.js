require("@rails/ujs").start()
    // require("turbolinks").start()
require("@rails/activestorage").start()
require("channels") // ActionCable
require("bootstrap")
require('jquery')
import '../stylesheets/application.scss'
import "@fortawesome/fontawesome-free/js/all";
// BEGIN: Import fontawesome svg
import { library, dom } from '@fortawesome/fontawesome-svg-core'
import { faUserSecret, faUnlock } from '@fortawesome/free-solid-svg-icons'

library.add(faUserSecret, faUnlock)
dom.watch()
    // END: Import fontawesome svg