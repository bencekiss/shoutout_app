class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :shouts
  has_many :rewards, through: :shouts
  has_many :owned_restaurants, class_name: "Restaurant", foreign_key: "owner_id"
  has_and_belongs_to_many :redeemed_rewards, class_name: "Reward"


  # validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  # validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  # validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  #
  # validates :email, uniqueness: true
end
