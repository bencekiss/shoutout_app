class Restaurant < ApplicationRecord
  has_many :rewards
  has_many :shouts
  has_many :users, through: :shouts
  belongs_to :owner, class_name: "User"

  accepts_nested_attributes_for :rewards, reject_if: :all_blank, allow_destroy: true
end
