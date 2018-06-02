class RidesController < ApplicationController
  
  def xyz
    @ride = Ride.create(
      user_id: params[:user_id],
      attraction_id: params[:attraction_id])
    
    redirect_to root_path
  end
  
end
