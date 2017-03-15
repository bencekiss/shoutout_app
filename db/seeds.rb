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


  rest = Restaurant.create!(
    name: "Shawarma King",
    address: "220 Kings St. West",
    phone_number: "416-967-1111",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner_id: 1
  )
  File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg')) do |f|
    rest.rest_img = f
  end
  rest.save!

  rest = Restaurant.create!(
    name: "Burgers Priest",
    address: "212 Adelaide St. W",
    phone_number: "416-416-4166",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner_id: 1
  )
  File.open(File.join(Rails.root, '/public/images/BurgersPriest.jpeg')) do |f|
    rest.rest_img = f
  end
  rest.save!

  rest = Restaurant.create!(
    name: "Burrito Boyz",
    address: "226 Adelaide St. West",
    phone_number: "416-555-1111",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner_id: 1
  )
  File.open(File.join(Rails.root, '/public/images/BurritoBoyz.png')) do |f|
    rest.rest_img = f
  end
  rest.save!

  rest = Restaurant.create!(
    name: "Smokes Poutine",
    address: "224 Adelaide St. West",
    phone_number: "416-444-4444",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner_id: 1
  )
  File.open(File.join(Rails.root, '/public/images/SmokesPoutine.jpeg')) do |f|
    rest.rest_img = f
  end
  rest.save!

  rest = Restaurant.create!(
    name: "Tokaji Winery and Restaurant",
    address: "7887 Weston Rd.",
    phone_number: "905-851-7877",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner_id: 1
  )
  File.open(File.join(Rails.root, '/public/images/Tokaji.jpeg')) do |f|
    rest.rest_img = f
  end
  rest.save!

  20.times do
    Reward.create!(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      point_value: rand(100),
      restaurant_id: rand(1..5)
    )
  end
