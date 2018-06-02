module SessionsHelper
  
  # 使用者登入後，把使用者的 id 存到 session 裡 
  def log_in(user)
    session[:user_id] = user.id 
  end
  
  # 如果有 session 裡有值，就把它取出來
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
end