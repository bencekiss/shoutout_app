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

  rest = Restaurant.create!(
    name: "Shawarma King",
    address: "220 Kings St. West",
    phone_number: "416-967-1111",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
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
    owner: User.first
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
    owner: User.first
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
    owner: User.first
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
    owner: User.first
  )
  File.open(File.join(Rails.root, '/public/images/Tokaji.jpeg')) do |f|
    rest.rest_img = f
  end
  rest.save!


  rest = Restaurant.create!(
    name: "The Captain's Boil",
    address: "671 College St.",
    phone_number: "416-538-8868",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  File.open(File.join(Rails.root, '/public/images/captains_boil.png')) do |f|
    rest.rest_img = f

  end
  rest.save!
  #
  # 20.times do
  #   Reward.create!(
  #     name: Faker::Commerce.product_name,
  #     description: Faker::Lorem.sentence,
  #     point_value: rand(100),
  #     restaurant: Restaurant.all.sample
  #   )
  # end
# Shawarma King rewards
  Reward.create!(
    name: "10% off your next meal",
    description: "Get 10% off your next meal. Conditions apply.",
    point_value: 200,
    restaurant_id: 1
  )

  Reward.create!(
    name: "Get a free appetizer",
    description: "Get a free appetizer with your next purchase",
    point_value: 300,
    restaurant_id: 1
  )

  Reward.create!(
    name: "Shawarma on us",
    description: "Shawarma of your choice on us",
    point_value: 400,
    restaurant_id: 1
  )

# Burgers Priest rewards
  Reward.create!(
    name: "5% off your next meal",
    description: "Get 5% off your next meal. Conditions apply.",
    point_value: 200,
    restaurant_id: 2
  )

  Reward.create!(
    name: "Free French fries",
    description: "Free french fries",
    point_value: 300,
    restaurant_id: 2
  )

  Reward.create!(
    name: "Free Blue Steel burger",
    description: "Blue cheeseburger served with a regular bun",
    point_value: 200,
    restaurant_id: 2
  )

#Burrito Boyz rewards
Reward.create!(
  name: "Free soda",
  description: "Your choice of canned soda.",
  point_value: 100,
  restaurant_id: 3
)

Reward.create!(
  name: "Free chipz and dip",
  description: "Served with a side of guacamole and salsa",
  point_value: 200,
  restaurant_id: 3
)

Reward.create!(
  name: "Free standard quesedilla",
  description: "Tex Mex cheese, tomato, green pepper, green onion, red onion, black beans- Homemade and HOT",
  point_value: 300,
  restaurant_id: 3
)

# Smokes Poutine rewards
  Reward.create!(
    name: "Free pop",
    description: "Free pop with any purchase.",
    point_value: 300,
    restaurant_id: 4
  )

  Reward.create!(
    name: "Extra cheese",
    description: "Pick up your free onion rings.",
    point_value: 300,
    restaurant_id: 4
  )

  Reward.create!(
    name: "Smoke's Shirt",
    description: "Available in small, medium and extra large",
    point_value: 400,
    restaurant_id: 4
  )

  Reward.create!(
    name: "Free large Smashed Traditional",
    description: "Smoke's signature gravy and Quebec cheese curd",
    point_value: 600,
    restaurant_id: 4
  )

# Tokaji rewards

Reward.create!(
  name: "Free pop",
  description: "Free pop with any purchase.",
  point_value: 200,
  restaurant_id: 5
)

Reward.create!(
  name: "Free Takoyaki",
  description: "5 pieces of takoyaki.",
  point_value: 300,
  restaurant_id: 5
)

Reward.create!(
  name: "Free Dynamite Roll",
  description: "Salmon, prawn tempura and masago, with avocado and Japanese mayo",
  point_value: 400,
  restaurant_id: 5
)

Reward.create!(
  name: "Free Katsudon",
  description: "Deep fried pork cutlet, egg on steamed rice",
  point_value: 600,
  restaurant_id: 5
)

#Captains Boil rewards

Reward.create!(
  name: "10% off your next meal",
  description: "Get 10% off your next purchase.",
  point_value: 300,
  restaurant_id: 6
)

Reward.create!(
  name: "Captain's Boil Cap",
  description: "One size fits all",
  point_value: 400,
  restaurant_id: 6
)

Reward.create!(
  name: "Fish teriayaki with rice",
  description: "Fried haddock on steamed rice",
  point_value: 700,
  restaurant_id: 6
)
