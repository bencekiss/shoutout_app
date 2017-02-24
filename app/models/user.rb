class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :shouts
  has_many :rewards, through: :shouts
  has_many :owned_restaurants, class_name: "Restaurant"
end
