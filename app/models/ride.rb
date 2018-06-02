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
end
