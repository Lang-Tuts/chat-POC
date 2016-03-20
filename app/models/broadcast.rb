class Broadcast
  include Mongoid::Document
  field :user_id, type: String
  field :channel_id, type: String
end
