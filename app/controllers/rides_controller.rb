class RidesController < ApplicationController
  
  def xyz
    @ride = Ride.create(
      user_id: params[:user_id],
      attraction_id: params[:attraction_id])
    
    redirect_to root_path
  end
  
  def create
    @ride = Ride.create(
      user: current_user,
      attraction_id: params[:attraction_id]))
  
    redirect_to root_path
  end
  
end
