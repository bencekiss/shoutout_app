class RewardsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards_users do |t|
      t.integer :reward_id
      t.integer :user_id
    end
  end
end
