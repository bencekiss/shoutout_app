class User < ApplicationRecord
  # authenticates_with_sorcery!

  has_many :shouts
  has_many :owned_restaurants, class_name: "Restaurant", foreign_key: "owner_id"
  has_many :rewards, through: :redemptions
  has_many :redemptions


  # validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  # validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  # validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  # validates :email, presence: true
  # validates :email, uniqueness: true

  mount_uploader :avatar, AvatarUploader

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

  def twitter
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key         = ENV['consumer_key']
      config.consumer_secret      = ENV['consumer_secret']
      config.access_token         = token
      config.access_token_secret  = secret
    end
  end

end
