class Communication
  include Mongoid::Document

  has_many :chats
  belongs_to :broadcast
  belongs_to :user
  field :sender_id, type: String
  field :receiver_id, type: String
  field :broadcast_id, type: String

  def self.create_broadcast_to_all
    Communication.destroy_all
    Chat.destroy_all
    Broadcast.all.each do |b|
      c = Channel.where(id: b.channel_id).first
      c.subscriptions.all.each do |s|
        c = Communication.create(broadcast_id: b.id, sender_id: c.user_id, receiver_id: s.user_id)
        c.chats.create(user_id: c.sender_id,communication_id: c.id, message: b.message)
      end
    end
  end
end
