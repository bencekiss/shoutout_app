FactoryGirl.define do
  factory :reward do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    point_value { rand(100) }
    restaurant_id { rand(10) }
  end
end
