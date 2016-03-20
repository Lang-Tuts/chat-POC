json.array!(@communications) do |communication|
  json.extract! communication, :id, :sender_id, :receiver_id, :broadcast_id
  json.url communication_url(communication, format: :json)
end
