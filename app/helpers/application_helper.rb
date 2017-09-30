module ApplicationHelper

  def current_user
    # user = User.find_by(id: session[:user_id])
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
