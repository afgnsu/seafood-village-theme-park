class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(name: params[:session][:name].downcase)
    puts user
    if user and user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to root_path
    else
      flash.now[:alert] = "喔喔，某些錯誤發生了"
      render "new"
    end
  end
  
  def destroy
    session.delete(:user_id)
    flash[:alert] = "登出了"
    redirect_to root_path
  end
end
