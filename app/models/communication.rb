class Communication
  include Mongoid::Document
  field :sender_id, type: String
  field :receiver_id, type: String
  field :broadcast_id, type: String
end
