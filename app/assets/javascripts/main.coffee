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