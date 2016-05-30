$(document).ready( () ->
  $("#transaction_order_id").change( () ->
    $.ajax(url: "/orders/" + $("#transaction_order_id").val())
    .done(() ->
      alert("call succesfull")
    )
  )
)
