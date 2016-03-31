module ApplicationHelper
  def user_name(user_id)
    User.where(id: user_id).email
  end
end
