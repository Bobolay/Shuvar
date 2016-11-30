$(document).on "ready", ->

  #     M A I N     M E N U 

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

  #     S I D E     B A R 

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