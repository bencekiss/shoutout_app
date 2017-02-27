class Restaurant < ApplicationRecord
  has_many :rewards
  has_many :shouts
  has_many :users, through: :shouts
  belongs_to :owner, class_name: "User"

  accepts_nested_attributes_for :rewards, reject_if: :all_blank, allow_destroy: true


  def points(user)
    shouts = Shout.all.where("user_id = ? AND restaurant_id = ?", user.id, self.id)
    points = 0
    shouts.each do |shout|
      points += Shout.points(shout)
    end
    points
  end
end