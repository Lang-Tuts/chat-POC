class Chat
  include Mongoid::Document

  belongs_to :communication
  field :user_id, type: String
  field :communication_id, type: String
  field :message, type: String
end
