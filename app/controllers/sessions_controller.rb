class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(name: params[:session][:name].downcase)
    puts user
    if user and user.authenticate(params[:session][:password])
      redirect_to root_path
    else
      render "new"
    end
  end
  
  def destroy
  end
end
