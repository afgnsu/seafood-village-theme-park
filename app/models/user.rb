# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  height          :integer
#  happiness       :integer
#  nausea          :integer
#  tickets         :integer
#  password_digest :string
#  admin           :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides
end
