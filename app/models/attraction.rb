# == Schema Information
#
# Table name: attractions
#
#  id               :bigint(8)        not null, primary key
#  name             :string
#  tickets          :integer
#  nausea_rating    :integer
#  happiness_rating :integer
#  min_height       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Attraction < ApplicationRecord
  has_many :rides
  has_many :users, through: :rides
end
