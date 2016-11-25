$(document).on "ready", ->

  #     M O B I L E     S E A R C H     P O P U P

  $('.mobile-search-popup-button').on "click", ->
    $('.mobile-search-popup').fadeIn(200)
  $('.mobile-search-popup-close').on "click", ->
    $('.mobile-search-popup').fadeOut(100)

  $(".mobile-search-popup .search-input-field").on "click", ->
    $(".match-categories-container").addClass("visible")

  $.clickOut(".mobile-search-popup .search-input-field",
    ()->
      $(".mobile-search-popup .search-input-field .match-categories-container").removeClass('visible')
    {except: ".top-nav .search-input-field"}
  )

  #     C A L L     U S     P O P U P

  $('.call-us-popup-button').on "click", ->
    $('.call-us-popup').toggleClass("visible")

  $('.call-us-popup .button').on "click", ->
    $(this).css("color","#029AE4")
    $('.success').addClass("visible")
    setTimeout (->
      $('.success').removeClass("visible")
    ), 3000
    setTimeout (->
      $('.call-us-popup .button').css("color","white")
    ), 3800

  $.clickOut(".call-us-popup",
    ()->
      $(".call-us-popup").removeClass('visible')
    {except: ".call-us-popup-button, .call-us-popup"}
  )