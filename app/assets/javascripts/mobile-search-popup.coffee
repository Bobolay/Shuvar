$(document).on "ready", ->

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