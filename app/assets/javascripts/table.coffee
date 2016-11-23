$(document).on "ready", ->

  $(".link").on "click", ->
    window.document.location = $(this).data("href")