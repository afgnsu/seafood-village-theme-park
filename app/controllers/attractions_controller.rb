class AttractionsController < ApplicationController
  
  def index
    @attractions = Attraction.all.order(created_at: :desc)
  end
  
end
