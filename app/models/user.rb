class User < ApplicationRecord
<<<<<<< HEAD
 attr_accessor :email, :password, :password_confirmation, :authentications_attributes
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end
=======
  # authenticates_with_sorcery!
>>>>>>> 0658913191102303d06212b664f2526941e39dca

  has_many :shouts
  has_many :owned_restaurants, class_name: "Restaurant", foreign_key: "owner_id"
  has_many :rewards, through: :redemptions
  has_many :redemptions
<<<<<<< HEAD
  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
=======

  def self.find_or_create_from_auth_hash(auth_hash)
    user = where(provider: auth_hash[:provider], uid: auth_hash[:uid]).first_or_create
    user.update(
      name: auth_hash.info.name,
      profile_image: auth_hash.info.profile_image,
      token: auth_hash.credentials.token,
      secret: auth_hash.credentials.secret
    )
    user
  end
>>>>>>> 0658913191102303d06212b664f2526941e39dca

  # validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  # validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  # validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  # validates :email, presence: true
  # validates :email, uniqueness: true
  mount_uploader :avatar, AvatarUploader

end
