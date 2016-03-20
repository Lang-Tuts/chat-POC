json.array!(@chats) do |chat|
  json.extract! chat, :id, :user_id, :communication_id
  json.url chat_url(chat, format: :json)
end
