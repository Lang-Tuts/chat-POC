class Broadcast
  include Mongoid::Document

  has_many :communications
  belongs_to :channel
  field :user_id, type: String
  field :channel_id, type: String
  field :message, type: String
end
