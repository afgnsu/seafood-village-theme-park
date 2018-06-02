class AttractionsController < ApplicationController
  
  def index
    @attractions = Attraction.all.order(created_at: :desc)
  end
  
  def show 
    @attraction = Attraction.find(params[:id])
  end
  
end
