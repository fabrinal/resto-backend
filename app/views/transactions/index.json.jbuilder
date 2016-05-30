json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :order_id, :paid_amount, :discount, :validation_id, :status
  json.url transaction_url(transaction, format: :json)
end
