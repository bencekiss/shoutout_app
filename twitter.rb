require 'twitter'



# client = Twitter::REST::Client.new do |config|
#   config.consumer_key        = ENV["twitter_consumer_key"]
#   config.consumer_secret     = ENV["twitter_consumer_secret"]
#   config.access_token        = ENV["twitter_access_token"]
#   config.access_token_secret = ENV["twitter_secret"]
# end

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "NZVAT8CyMnLejRJX3EwvVihpX"
  config.consumer_secret     = "tCc7879xNhwLkfCeopH5CxPuxNgdJ2agzmFv60vKyhPaDHLGsJ"
  config.access_token        = "834852514394677250-JcZKjrmqACVxQZYKUS4wxoY58vL1L49"
  config.access_token_secret = "xh9Gka8nEng2rQcrQ9sd9VoY6xjspMEqH4PJykK1QR1th"

end



client.status(167309659198328832).retweeted?
ryan= client.user_timeline("Danny_gibbins")

ryan.take(2).collect do |tweet|
  puts "#{tweet.user.screen_name}: #{tweet.text} tweets: #{tweet.retweet?} "
end

puts "-----------------------"

ryan.take(3).collect do |tweet|
  puts "tweet: #{tweet.text} | tweet count: #{tweet.retweet_count} | favorites: #{tweet.favorite_count} | geo: #{tweet.geo}"
end
