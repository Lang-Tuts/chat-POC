json.array!(@broadcasts) do |broadcast|
  json.extract! broadcast, :id, :user_id, :channel_id
  json.url broadcast_url(broadcast, format: :json)
end
