$(document).on "ready", ->

  #     S I D E N A V     D R O P D O W N

  $('.avatar-container.logged-in').on 'click', ->
    $('.avatar-container .dropdown-container').toggleClass('visible')

  $.clickOut(".avatar-container .dropdown-container",
    ()->
      $(".avatar-container .dropdown-container").removeClass('visible')
    {except: ".avatar-container"}
  )

  #     D O W N L O A D     F I L E 

  $('.download .button').on 'click', ->
    $('.download .dropdown-container').toggleClass('visible')

  $.clickOut(".download .dropdown-container",
    ()->
      $(".download .dropdown-container").removeClass('visible')
    {except: ".download .button"}
  )