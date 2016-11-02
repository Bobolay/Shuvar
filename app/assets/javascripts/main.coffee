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
    # $(this).toggleClass('opened')
    $side_bar.toggleClass('opened')


  $.clickOut(".sidebar-button",
    ()->
      # $menu_button.removeClass('opened')
      $side_bar.removeClass('opened')
    {except: ".sidebar-button, .side-bar"}
  )