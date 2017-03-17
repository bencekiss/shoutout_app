  rest = Restaurant.new(
    name: "JC Mart Sushi + Cleaners",
    address: "136 Simcoe St, Toronto, ON M5H 3G4",
    phone_number: "647-438-2514",
    rest_img: nil,
    RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/1.JCleaners.jpg'))),
    rest_img: open(""),
    owner: User.first
  )
  # rest.remote_rest_img_url =
  # rest.save!

  rest = Restaurant.new(
    name: "Aroma Fine Indian Cuisine",
    address: "287 King St W, Toronto, ON M5V 1J5",
    phone_number: "416-971-7242",
    rest_img: nil,
    RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/2.Aroma.jpg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  # rest.remote_rest_img_url =
  # rest.save!

  rest = Restaurant.new(
    name: "Lee Chen Asian Bistro",
    address: "214 King St W, Toronto, ON M5H 3S6",
    phone_number: "416-519-8688",
    rest_img: nil,
    RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/3.LeeChen.jpg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  # rest.remote_rest_img_url =
  # rest.save!

  rest = Restaurant.new(
    name: "La Camita",
    address: "501 College St, Toronto, ON M6G 1A5",
    phone_number: "416-964-1555",
    rest_img: nil,
    RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/4.Camita.jpg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  # rest.remote_rest_img_url =
  # rest.save!


  rest = Restaurant.new(
    name: "Soi Thai Street Food",
    address: "651 College St, Toronto, ON M6G 1B7",
    phone_number: "647-345-8838",
    rest_img: nil,
    RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/5.Soi.jpg'))),
    # rest_img: open("http://www.shawarmasking.ca/wp-content/uploads/2016/08/Shawarma-King-Logo2.png"),
    owner: User.first
  )
  # rest.remote_rest_img_url =
  # rest.save!

  rest = Restaurant.new(
    name: "B'saha Restaurant",
    address: "599 College St, Toronto, ON M6G 1B5",
    phone_number: "416-536-9292",
    rest_img: nil,
    RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/6.Bsaha.png'))),
    # rest_img: open(""),
    owner: User.first
  )
  # rest.remote_rest_img_url =
  # rest.save!

  rest = Restaurant.new(
  name: "Freshii",
  address: "525 University Ave, Toronto, ON M5G 2L3",
  phone_number: "647-748-1800",
  rest_img: nil,
  RestImgUploader.new.store!(File.open(File.join(Rails.root, '/public/images/7.Freshii.'))),
  # rest_img: open(""),
  owner: User.first
  )
  # rest.remote_rest_img_url =
  # rest.save!
