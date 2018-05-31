class UsersController < ApplicationController
  
  def sign_up
    @user = User.new
  end
  
  def sign_up_submit
    @user = User.new(user_params)
    @user.save
    redirect_to root_path
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :password)
  end
  
end
