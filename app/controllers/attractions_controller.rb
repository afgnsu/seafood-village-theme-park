class AttractionsController < ApplicationController
  
  def index
    @attractions = Attraction.all.order(created_at: :desc)
  end
  
  def show 
    @attraction = Attraction.find(params[:id])
    
  end
  
  # POST /attractions/:id/ride
  def ride
    @attraction = Attraction.find(params[:id])
    
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
