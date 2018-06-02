# == Schema Information
#
# Table name: rides
#
#  id            :bigint(8)        not null, primary key
#  user_id       :integer
#  attraction_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :attraction
  
  def meet_requirements
    enough_tickets, tall_enough = false
    if self.user.tickets >= self.attraction.tickets
      enough_tickets = true
    end
    if self.user.height >= self.attraction.min_height
      tall_enough = true
    end
    return [enough_tickets, tall_enough]
  end 
  
  def start_ride
    # new_happiness = self.user.happiness + self.attraction.happiness_rating
    # new_nausea = self.user.nausea + self.attraction.nausea_rating
    new_tickets =  self.user.tickets - self.attraction.tickets
    self.user.update(
      # happiness: new_happiness,
      # nausea: new_nausea,
      tickets: new_tickets
    )
    "感謝乘坐 #{self.attraction.name}!"
  end
  
  def take_ride
    enough_tickets, tall_enough = meet_requirements
    if enough_tickets && tall_enough
      start_ride
    elsif tall_enough && !enough_tickets
      "抱歉. " + ticket_issue
    elsif enough_tickets && !tall_enough
      "抱歉. " + height_issue
    else
      "抱歉. " + ticket_issue + " " + height_issue
    end
  end

  def take_ride?
    enough_tickets, tall_enough = meet_requirements
    enough_tickets && tall_enough
  end
  
  def ticket_issue
    "代幣不夠乘坐 #{self.attraction.name}."
  end

  def height_issue
    "身高限制乘坐 #{self.attraction.name}."
  end
   
  
end
