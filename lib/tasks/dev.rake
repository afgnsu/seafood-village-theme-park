namespace :dev do
  
  task fake_data: :environment do
    Attraction.create!(
      name: "戀愛巴士", 
      tickets: 50, 
      nausea_rating: 3,
      happiness_rating: 5,
      min_height: 170)
  end
  
end