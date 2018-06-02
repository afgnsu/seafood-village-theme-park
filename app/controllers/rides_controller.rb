class RidesController < ApplicationController
  
  def xyz
    @attraction = Attraction.find(params[:attraction_id])
    
    @ride = @attraction.rides.build
    @ride.user = current_user
    
    message = @ride.take_ride
    
    if @ride.take_ride?
      @attraction.rides.create!(user: current_user)
      flash[:alert] = message
      redirect_to root_path
    else
      flash[:alert] = message
      redirect_to attraction_path(@attraction.id)
    end
  end
  
end
