$(document).on "ready", ->

  #   product-one all filters

  $(".filter-all-container .filter-option").on "click", ->
    $(this).removeClass('visible')

  $(".filter-country .country span").on "click", ->
    $(this).parent().removeClass('visible')