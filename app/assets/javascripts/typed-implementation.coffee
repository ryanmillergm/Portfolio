ready = ->
  Typed.new '.element',
    strings: [
      "Daily dissecting the pieces to what makes things work, configuring innovative new concepts and intuitively designing for maximum output."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
