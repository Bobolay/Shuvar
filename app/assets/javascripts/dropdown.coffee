$(document).on "ready", ->

  $('.avatar-container').on 'click', ->
    $('.avatar-container .dropdown-container').toggleClass('visible')

  $.clickOut(".avatar-container .dropdown-container",
    ()->
      $(".avatar-container .dropdown-container").removeClass('visible')
    {except: ".avatar-container"}
  )

  $('.download .button').on 'click', ->
    $('.download .dropdown-container').toggleClass('visible')

  $.clickOut(".download .dropdown-container",
    ()->
      $(".download .dropdown-container").removeClass('visible')
    {except: ".download .button"}
  )