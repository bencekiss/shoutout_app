class Reward < ApplicationRecord
  belongs_to :restaurant
  has_many :shouts
  has_many :users, through: :shouts
  has_and_belongs_to_many :redeemers, class_name: "User"
end
