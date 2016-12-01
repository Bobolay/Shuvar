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

  #     U N S U B S C R I B E

  $('.subscribe-content .unsubscribe').on "click", ->
    $('.info-popup-for-unsubscribe').fadeIn()
  $('.info-popup-for-unsubscribe .close-popup').on "click", ->
    $('.info-popup-for-unsubscribe').fadeOut()

  $.clickOut(".info-popup-for-unsubscribe .indent-container",
    ()->
      $(".info-popup-for-unsubscribe").fadeOut()
    {except: ".info-popup-for-unsubscribe .indent-container, .subscribe-content .unsubscribe"}
  )

  $('.subscribe-content .unsubscribe').on "click", ->
    # $(this).closest('.subscribe-block').remove()

  #     S U B S C R I B E     P O P U P

  $('.subscribe-content .subscribe').on "click", ->
    $('.info-popup-for-subscribe').fadeIn()
  $('.info-popup-for-subscribe .close-popup').on "click", ->
    $('.info-popup-for-subscribe').fadeOut()

  $.clickOut(".info-popup-for-subscribe .indent-container",
    ()->
      $(".info-popup-for-subscribe").fadeOut()
    {except: ".info-popup-for-subscribe .indent-container, .subscribe-content .subscribe"}
  )

  #     P R O D U C T     R E P O R T     P O P U P

  $('.product-full-report-container .button').on "click", ->
    $('.info-popup-for-product-report').fadeIn()
  $('.info-popup-for-product-report .close-popup').on "click", ->
    $('.info-popup-for-product-report').fadeOut()

  $.clickOut(".info-popup-for-product-report .indent-container",
    ()->
      $(".info-popup-for-product-report").fadeOut()
    {except: ".info-popup-for-product-report .indent-container, .product-full-report-container .button"}
  )
