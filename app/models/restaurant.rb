class Restaurant < ApplicationRecord
  has_many :rewards
  has_many :shouts
  has_many :users, through: :shouts
  belongs_to :owner, class_name: "User"

end
