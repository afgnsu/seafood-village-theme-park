class UsersController < ApplicationController
  
  def sign_up_new
    @user = User.new
  end
  
  def sign_up
    @user = User.new(user_params)
    @user.save
    log_in(@user)
    
    redirect_to root_path
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :password)
  end
  
end
