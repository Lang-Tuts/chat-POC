class Setting
  include Mongoid::Document
  field :user_id, type: Mongoid::String
  field :notification, type: Mongoid::Boolean
  field :visibility, type: Mongoid::Boolean
end
