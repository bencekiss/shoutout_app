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
# Shout.destroy_all

  User.create(
    uid: "834852514394677250",
    provider: "twitter"
  )

  rest = Restaurant.new(
    name: "Shawarma King",
    address: "220 Kings St. West, Toronto, ON M5H 2X4",
    phone_number: "416-967-1111",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/2/ShawarmaKing2.jpeg"
  rest.save!

  rest = Restaurant.new(
    name: "Burger's Priest",
    address: "212 Adelaide St. West, Toronto, ON M5S 2K6",
    phone_number: "416-416-4166",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/3/BurgersPriest.jpeg"
  rest.save!

  rest = Restaurant.new(
    name: "Burrito Boyz",
    address: "226 Adelaide St. West, Toronto, ON M2R 4K4",
    phone_number: "416-555-1111",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/4/BurritoBoyz.png"
  rest.save!

  rest = Restaurant.new(
    name: "Smokes Poutine",
    address: "224 Adelaide St. West, Toronto, ON M5P 1V1",
    phone_number: "416-444-4444",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/5/SmokesPoutine.jpeg"
  rest.save!

  rest = Restaurant.new(
    name: "Tokaji Winery and Restaurant",
    address: "7887 Weston Rd, Toronto, ON M5H 3G4",
    phone_number: "905-851-7877",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/6/Tokaji.jpeg"
  rest.save!


  rest = Restaurant.create!(
    name: "The Captain's Boil",
    address: "671 College St, Toronto, ON M6P 2K6",
    phone_number: "416-538-8868",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )

  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/6/captains_boil.png"
  rest.save!

  rest = Restaurant.new(
    name: "JC Mart Sushi + Cleaners",
    address: "136 Simcoe St, Toronto, ON M5H 3G4",
    phone_number: "647-438-2514",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )

  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/7/1.JCleaners.jpg"
  rest.save!

  rest = Restaurant.new(
    name: "Aroma Fine Indian Cuisine",
    address: "287 King St W, Toronto, ON M5V 1J5",
    phone_number: "416-971-7242",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )

  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/8/2.Aroma.jpg"
  rest.save!


  rest = Restaurant.new(
    name: "Lee Chen Asian Bistro",
    address: "214 King St W, Toronto, ON M5H 3S6",
    phone_number: "416-519-8688",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/9/3.LeeChen.jpg"
  rest.save!

  rest = Restaurant.new(
    name: "La Camita",
    address: "501 College St, Toronto, ON M6G 1A5",
    phone_number: "416-964-1555",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )

  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/10/4.Camita.jpg"
  rest.save!


  rest = Restaurant.new(
    name: "Soi Thai Street Food",
    address: "651 College St, Toronto, ON M6G 1B7",
    phone_number: "647-345-8838",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )

  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/11/5.Soi.jpg"
  rest.save!

  rest = Restaurant.new(
    name: "B'saha Restaurant",
    address: "599 College St, Toronto, ON M6G 1B5",
    phone_number: "416-536-9292",
    rest_img: nil,
    # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/ShawarmaKing2.jpeg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )

  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/12/6.Bsaha.png"
  rest.save!

  rest = Restaurant.new(
    name: "Freshii",
    address: "154 University Ave, Toronto, ON M5H 3Y9",
    phone_number: "647-692-5173",
    rest_img: nil,
    owner: User.first
  )

  rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/13/7.Freshii.jpg"
  rest.save!

  rest = Restaurant.new(
     name: "Maki My Way",
     address: "293 King Street West",
     phone_number: "416-599-8828",
     rest_img: nil,
     # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/makimyway.png'))),
     # rest_img: open(""),
     owner: User.first
   )

   rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/14/makimyway.png"
   rest.save!

   rest = Restaurant.new(
     name: "Pearl King",
     address: "291 King St W, Toronto, ON M5V 1J5",
     phone_number: "416-506-8886",
     rest_img: nil,
     # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/pearlking.png'))),
     # rest_img: open(""),
     owner: User.first
   )

   rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/15/pearlking.png"
   rest.save!

   rest = Restaurant.new(
     name: "Asahi Sushi",
     address: "640 Church St, Toronto, ON M4W 3T5",
     phone_number: "416-934-9990",
     rest_img: nil,
     # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/asahi.png'))),
     # rest_img: open(""),
     owner: User.first
   )

   rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/16/asahi.png"
   rest.save!

   rest = Restaurant.new(
     name: "Portuguese Chicken Guys",
     address: "898 College St, Toronto, ON M6H 1A4",
     phone_number: "416-537-7133",
     rest_img: nil,
     owner: User.first
   )


   rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/17/portuguesechickenguys.jpg"
   rest.save!

   rest = Restaurant.new(
     name: "Little India Restaurant",
     address: "255 Queen St W, Toronto, ON M5V 1Z4",
     phone_number: "416-537-7133",
     rest_img: nil,
     owner: User.first
     )


   rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/18/littleindia.png"
   rest.save!


   rest = Restaurant.new(
     name: "Miss Korea",
     address: "687 Yonge St, Toronto, ON M4Y 2B2",
     phone_number: "(647) 748-9100",
     rest_img: nil,
     # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/misskorea.png'))),
     # rest_img: open(""),
     owner: User.first
     )


   rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/19/misskorea.jpg"
   rest.save!


   rest = Restaurant.new(
     name: "Vivoli",
     address: "665 College Street, Toronto M6G 1B7.",
     phone_number: "(416) 536-7575",
     rest_img: nil,
     # RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/vivoli.jpg'))),
     # rest_img: open(""),
     owner: User.first
   )

   rest.remote_rest_img_url = "https://s3.us-east-2.amazonaws.com/bencekissfirst/uploads/restaurant/rest_img/20/vivoli.jpg"
   rest.save!


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
  #JC Mart Sushi
  Reward.create!(
    name: "Free edamame",
    description: "Free edamame appetizer",
    point_value: 100,
    restaurant_id: 7
  )

  Reward.create!(
    name: "Free small sake",
    description: "Gekkeikan Sake, hot and refreshing",
    point_value: 350,
    restaurant_id: 7
  )

  Reward.create!(
    name: "Free temaki",
    description: "Any Temaki of your choice!",
    point_value: 500,
    restaurant_id: 7
  )
  # Aroma Fine Indian Cuisine Rewards
  Reward.create!(
    name: "Free single chai",
    description: "Meeta meeta chai",
    point_value: 100,
    restaurant_id: 8
  )

  Reward.create!(
    name: "Free pakoras",
    description: "Served with mango chutney",
    point_value: 200,
    restaurant_id: 8
  )

  Reward.create!(
    name: "Get 20% off",
    description: "For meals up to $80",
    point_value: 600,
    restaurant_id: 8
  )
  # Lee Chen Asian Bistro Rewards
  Reward.create!(
    name: "Free jasmine tea",
    description: "Free refills!",
    point_value: 100,
    restaurant_id: 9
  )

  Reward.create!(
    name: "Free springroll appetizer",
    description: "Redeem 200 points for a free appetizer!",
    point_value: 200,
    restaurant_id: 9
  )

  Reward.create!(
    name: "10% off",
    description: "Get 10% off you next meal under $50!",
    point_value: 300,
    restaurant_id: 9
  )
  # La Camita Rewards
  Reward.create!(
    name: "Free soda",
    description: "Your choice of canned soda.",
    point_value: 100,
    restaurant_id: 10
  )

  Reward.create!(
    name: "Free chipz and dip",
    description: "Served with a side of guacamole and salsa",
    point_value: 200,
    restaurant_id: 10
  )

  Reward.create!(
    name: "Free fish taco",
    description: "Your choice of soft or hard shell",
    point_value: 300,
    restaurant_id: 10
  )
  # Soi Thai Street Food Rewards
  Reward.create!(
    name: "Free fresh shrimp and basil rice roll",
    description: "Fresh and delicious",
    point_value: 200,
    restaurant_id: 11
  )

  Reward.create!(
    name: "Bowl of Tom Yum",
    description: "Delicious Thai soup with shrimp",
    point_value: 350,
    restaurant_id: 11
  )

  Reward.create!(
    name: "Pad Thai",
    description: "Your choice of chicken shrimp or beef",
    point_value: 600,
    restaurant_id: 11
  )
  # B'saha Restaurant Rewards
  Reward.create!(
    name: "Shakshouka",
    description: "Poached eggs in a zesty tomato sauce",
    point_value: 800,
    restaurant_id: 12
  )

  Reward.create!(
    name: "Stewed White Beans",
    description: "Saucy and spicy",
    point_value: 800,
    restaurant_id: 12
  )

  Reward.create!(
    name: "Dchicha Soup",
    description: "Tex Mex cheese, tomato, green pepper, green onion, red onion, black beans- Homemade and HOT",
    point_value: 600,
    restaurant_id: 12
  )

  #Freshii
  Reward.create!(
    name: "Siracha Chicken Chilli",
    description: " Brown rice, chili, chicken, mushrooms, cilantro",
    point_value: 1200,
    restaurant_id: 13
  )

  Reward.create!(
    name: "Vegan Chili",
    description: "Brown rice, chili, avocado, broccoli",
    point_value: 800,
    restaurant_id: 13
  )

  Reward.create!(
    name: "Steak & Cheddar Chili",
    description: "Brown rice, chili, steak, aged cheddar",
    point_value: 1600,
    restaurant_id: 13
  )

  #Maki My Way rewards
  Reward.create!(
   name: "Free pop or water",
   description: "Get a free pop or water with your meal",
   point_value: 300,
   restaurant_id: 14
  )

  Reward.create!(
   name: "Free Chicken Karage",
   description: "Crispy battered chicken appetizer",
   point_value: 400,
   restaurant_id: 14
  )

  Reward.create!(
   name: "Free $7.95 maki roll",
   description: "Any maki roll in the $7.95 category",
   point_value: 700,
   restaurant_id: 14
  )

  #Asahi Sushi rewards

  Reward.create!(
   name: "10% off your next meal",
   description: "Get 10% off your next purchase.",
   point_value: 300,
   restaurant_id: 15
  )

  Reward.create!(
   name: "20% off your next meal",
   description: "Get 20% off your next purchase",
   point_value: 800,
   restaurant_id: 15
  )

  Reward.create!(
   name: "50% off your next meal",
   description: "Get 50% off your next purchase",
   point_value: 1400,
   restaurant_id: 15
  )

  #Portuguese Chicken Guys rewards

  Reward.create!(
   name: "10% off your next meal",
   description: "Get 10% off your next purchase.",
   point_value: 300,
   restaurant_id: 16
  )

  Reward.create!(
   name: "20% off your next meal",
   description: "Get 20% off your next purchase",
   point_value: 800,
   restaurant_id: 16
  )

  Reward.create!(
   name: "50% off your next meal",
   description: "Get 50% off your next purchase",
   point_value: 1400,
   restaurant_id: 16
  )

  #Little India rewards

  Reward.create!(
   name: "10% off your next meal",
   description: "Get 10% off your next purchase.",
   point_value: 300,
   restaurant_id: 17
  )

  Reward.create!(
   name: "20% off your next meal",
   description: "Get 20% off your next purchase",
   point_value: 800,
   restaurant_id: 17
  )

  Reward.create!(
   name: "50% off your next meal",
   description: "Get 50% off your next purchase",
   point_value: 1400,
   restaurant_id: 17
  )

  #Miss Korea rewards

  Reward.create!(
   name: "10% off your next meal",
   description: "Get 10% off your next purchase.",
   point_value: 300,
   restaurant_id: 18
  )

  Reward.create!(
   name: "20% off your next meal",
   description: "Get 20% off your next purchase",
   point_value: 800,
   restaurant_id: 18
  )

  Reward.create!(
   name: "50% off your next meal",
   description: "Get 50% off your next purchase",
   point_value: 1400,
   restaurant_id: 18
  )

  #Vivoli rewards

  Reward.create!(
   name: "10% off your next meal",
   description: "Get 10% off your next purchase.",
   point_value: 300,
   restaurant_id: 19
  )

  Reward.create!(
   name: "20% off your next meal",
   description: "Get 20% off your next purchase",
   point_value: 800,
   restaurant_id: 19
  )

  Reward.create!(
   name: "50% off your next meal",
   description: "Get 50% off your next purchase",
   point_value: 1400,
   restaurant_id: 19
  )

# THE vivoli rewards
  Reward.create!(
   name: "10% off your next meal",
   description: "Get 10% off your next purchase.",
   point_value: 300,
   restaurant_id: 20
  )

  Reward.create!(
   name: "20% off your next meal",
   description: "Get 20% off your next purchase",
   point_value: 800,
   restaurant_id: 20
  )

  Reward.create!(
   name: "50% off your next meal",
   description: "Get 50% off your next purchase",
   point_value: 1400,
   restaurant_id: 20
  )
