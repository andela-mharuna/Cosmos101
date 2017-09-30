module ApplicationHelper
  def current_user_email
    # session[:current_user_email]
  end

  def current_user
    # user = User.find_by(id: session[:user_id])
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
