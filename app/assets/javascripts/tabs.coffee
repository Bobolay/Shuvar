$(document).on "ready", ->

  $('.tab-control').on 'click', ->

    $container = $(this).closest('.tab-container')
    $container.find(".tab-controls").children().removeClass("active")

    $(this).addClass("active")

    $index = $(this).index()

    $container.find(".tab-contents").children().removeClass("active")
    $active_content = $(".tab-content").eq($index)
    $active_content.addClass("active")

# $(document).on 'click', (e)->
#   $(e.target).parent().children().removeClass('active')
#   $(e.target).addClass('active')
