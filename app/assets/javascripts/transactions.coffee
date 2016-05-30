$(document).ready( () ->
  $("#transaction_order_id").change( () ->
    $.ajax(url: "/orders/" + $("#transaction_order_id").val().toString() + ".json")
    .done((result) ->
      $("#total_price").text(result.total_price)
    )
  )
)
