module SessionsHelper
  
  # 如果有 session 裡有值，就把它取出來
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
end