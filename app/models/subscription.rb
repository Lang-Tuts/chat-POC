class Subscription
  include Mongoid::Document

  belongs_to :channel
  field :user_id, type: String
  field :channel_id, type: String
end
