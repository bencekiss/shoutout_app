# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Reward.destroy_all
# User.destroy_all
# Shout.destroy_all

  User.create(
    uid: "834852514394677250",
    provider: "twitter"
  )

  rest = Restaurant.new(
    name: "Shawarma King",
    address: "220 Kings St. West",
    phone_number: "416-967-1111",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/1/ShawarmaKing2.jpeg"
  rest.save!

  rest = Restaurant.new(
    name: "Burgers Priest",
    address: "212 Adelaide St. W",
    phone_number: "416-416-4166",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/2/BurgersPriest.jpeg"
  rest.save!

  rest = Restaurant.new(
    name: "Burrito Boyz",
    address: "226 Adelaide St. West",
    phone_number: "416-555-1111",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/3/BurritoBoyz.png"
  rest.save!

  rest = Restaurant.new(
    name: "Smokes Poutine",
    address: "224 Adelaide St. West",
    phone_number: "416-444-4444",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/4/SmokesPoutine.jpeg"
  rest.save!

  rest = Restaurant.new(
    name: "Tokaji Winery and Restaurant",
    address: "7887 Weston Rd.",
    phone_number: "905-851-7877",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/5/Tokaji.jpeg"
  rest.save!

  20.times do
    Reward.create!(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      point_value: rand(100),
      restaurant: Restaurant.all.sample
    )
  end
