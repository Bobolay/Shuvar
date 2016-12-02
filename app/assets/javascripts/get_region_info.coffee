$.get({
  url:"/locations.json",
  dataType: "json",
  success: (data)->
    console.log("data: ", data)
    items_html = ""
    for item in data
      item_html = ""
      item_html = "
      <div class='info-statistics-region' data-region-id='#{item.region_id}'>
        <div class='text-with-bold-span'>
          #{item.description}      
        </div>
        <div class='total'>#{item.weight}</div>
      </div>"

      items_html += item_html

    $('.info-statistics').html(items_html)

  error: (data)->
    console.log("error")
  })