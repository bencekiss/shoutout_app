# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Reward.destroy_all
User.destroy_all
Shout.destroy_all

25.times do
  p = Restaurant.create!(
    name: Faker::App.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber,
    rest_image: Faker::Avatar.image,
    owner_id: rand(5)
  )

  5.times do
    p.rewards.create!(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      point_value: rand(100)
    )
  end
end

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    password: 'password',
    )
  5.times do
    Shout.create!(
    twitter_id: rand(10),
    twitter_text: Faker::Lorem.sentence,
    twitter_image: 'http://lorempixel.com/300/300/food/',
    retweets: rand(100),
    favourites: rand(100),
    user_id: rand(10),
    restaurant_id: rand(25),
    )
  end
end
