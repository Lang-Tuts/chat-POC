class Chat
  include Mongoid::Document
  field :user_id, type: String
  field :communication_id, type: String
end
