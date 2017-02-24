class CreateShouts < ActiveRecord::Migration[5.0]
  def change
    create_table :shouts do |t|
      t.integer     :twitter_id
      t.string      :twitter_text
      t.string      :twitter_image
      t.integer     :retweets
      t.integer     :favourites
      t.integer     :user_id
      t.integer     :restaurant_id
      t.timestamps
    end
  end
end
