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
    @attraction.rides.create!(user: current_user)
    
    redirect_to root_path
  end
  
end
