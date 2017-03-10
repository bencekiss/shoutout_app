# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Restaurant.destroy_all
# Reward.destroy_all
# User.destroy_all
# Shout.destroy_all

#

<<<<<<< HEAD
  Restaurant.create!(
    name: "Shawarma King",
    address: "220 Kings St. West",
    phone_number: "416-967-1111",
    # rest_image: "http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png",
    owner_id: 1
  )

  Restaurant.create!(
    name: "Shawarma King",
    address: "220 Kings St. West",
    phone_number: "416-967-1111",
    # rest_image: "http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png",
    owner_id: 1
  )

  Restaurant.create!(
=======
  
  Restaurant.create(
>>>>>>> css
    name: "Shawarma King",
    address: "220 Kings St. West",
    phone_number: "416-967-1111",
    # rest_image: "http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png",
    owner_id: 1
  )
<<<<<<< HEAD
=======
  #
  # Restaurant.create!(
  #   name: "Shawarma King",
  #   address: "220 Kings St. West",
  #   phone_number: "416-967-1111",
  #   rest_image: "http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png",
  #   owner_id: 1
  # )
  #
  # Restaurant.create!(
  #   name: "Shawarma King",
  #   address: "220 Kings St. West",
  #   phone_number: "416-967-1111",
  #   rest_image: "http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png",
  #   owner_id: 1
  # )
  #
  # p = Restaurant.create!(
  #   name: Faker::App.name,
  #   address: Faker::Address.street_address,
  #   phone_number: Faker::PhoneNumber.cell_phone,
  #   rest_image: "http://lorempixel.com/400/200/city/",
  #   owner_id: rand(5).ceil
  # )
  #
  # 5.times do
  #   p.rewards.create!(
  #     name: Faker::Commerce.product_name,
  #     description: Faker::Lorem.sentence,
  #     point_value: rand(100)
  #   )
#
# end
>>>>>>> css

  p = Restaurant.create!(
    name: Faker::App.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    # rest_image: "http://lorempixel.com/400/200/city/",
    owner_id: rand(5).ceil
  )
#
  5.times do
    p.rewards.create!(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      point_value: rand(100)
    )
#
end
#
# 10.times do
#   User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.free_email,
#     password: 'password',
#     password_confirmation: 'password'
#     )
#   5.times do
#     Shout.create!(
#     twitter_id: rand(10).ceil,
#     twitter_text: Faker::Lorem.sentence,
#     twitter_image: 'http://lorempixel.com/300/300/food/',
#     retweets: rand(100),
#     favourites: rand(100),
#     user_id: rand(10).ceil,
#     restaurant_id: rand(25).ceil,
#     )
#   end
# end
