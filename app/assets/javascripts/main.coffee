$(document).on "ready", ->

  $menu_button = $('.menu-button')
  $side_nav = $('.side-nav')

  $menu_button.on 'click', ->
    $(this).toggleClass('opened')
    $side_nav.toggleClass('opened')

  $.clickOut(".menu-button",
    ()->
      $menu_button.removeClass('opened')
      $side_nav.removeClass('opened')
    {except: ".menu-button, .side-nav"}
  )



  $sidebar_button = $('.sidebar-button')
  $side_bar = $('.side-bar')

  $sidebar_button.on 'click', ->
    $(this).toggleClass('opened')
    $side_bar.toggleClass('opened')
    $('body').toggleClass('overflow')

  $.clickOut(".sidebar-button",
    ()->
      $sidebar_button.removeClass('opened')
      $side_bar.removeClass('opened')
      $('body').removeClass('overflow')
    {except: ".sidebar-button, .side-bar"}
  )


  #   all filters

  $(".filter-all-container .filter-option").on "click", ->
    $(this).removeClass('visible')

  $(".filter-country .country span").on "click", ->
    $(this).parent().removeClass('visible')





  $(".top-nav .search-input-field").on "click", ->
    $(".match-categories-container").addClass("visible")

  $.clickOut(".top-nav .search-input-field",
    ()->
      $(".match-categories-container").removeClass('visible')
    {except: ".top-nav .search-input-field"}
  )