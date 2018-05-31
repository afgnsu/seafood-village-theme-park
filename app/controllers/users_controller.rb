class UsersController < ApplicationController
  
  def sing_up
    @user = User.new
  end
end
