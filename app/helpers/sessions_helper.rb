module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    return @current_user
  end
=begin
    nếu user hiện tại = nil thì gán user hiện tại = USER find id = ss UId nguoc lai thi ko
    if @current_user.nil?
    @current_user = User.find_by(id: session[:user_id])
    else
    @current_user
    end
=end
  def logged_in?
    !current_user.nil?
  end
end
