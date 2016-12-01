$(document).on "ready", ->

  $(".top-nav .search-input-field").on "click", ->
    $(".match-categories-container").addClass("visible")

  $.clickOut(".top-nav .search-input-field",
    ()->
      $(".top-nav .search-input-field .match-categories-container").removeClass('visible')
    {except: ".top-nav .search-input-field"}
  )
