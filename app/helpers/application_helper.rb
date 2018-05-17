module ApplicationHelper
  def logged
    user_signed_in?
  end
end
