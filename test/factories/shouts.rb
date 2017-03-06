FactoryGirl.define do
  factory :shout do
    twitter_id { rand(10).ceil }
    twitter_text { Faker::Lorem.sentence }
    twitter_image { 'http://lorempixel.com/300/300/food/' }
    retweets { rand(100) }
    favourites { rand(100) }
    user_id { rand(100) }
    restaurant_id { rand(25).ceil }
  end
end
