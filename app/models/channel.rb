class Channel
  include Mongoid::Document

  has_many :subscriptions
  has_many :broadcasts
  field :user_id, type: String
  field :name, type: String
end
