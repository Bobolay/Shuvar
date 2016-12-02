$(document).on "ready", ->

  $map = $('.map-container svg')
  $region = $map.find('.region')

  $region.on 'click', ->
    $region_id = $(this).attr("data-region-id")
    console.log("region:", $region_id)