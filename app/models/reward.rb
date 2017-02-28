class Reward < ApplicationRecord
  belongs_to :restaurant
  has_many :shouts
  has_many :users, through: :redemptions
  has_many :redemptions
end
