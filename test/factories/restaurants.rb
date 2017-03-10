FactoryGirl.define do

  factory :restaurant do
    name          { Faker::App.name }
    address       { Faker::Address.street_address }
    phone_number  { Faker::PhoneNumber.cell_phone }
    rest_img      { "http://lorempixel.com/400/200/city" }
    owner_id      { rand(5).ceil }
  end

end
