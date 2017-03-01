class CreateRedemptions < ActiveRecord::Migration[5.0]
  def change
    create_table :redemptions do |t|
      t.integer :user_id
      t.integer :reward_id
      t.boolean :redemption_status, default: false

      t.timestamps
    end
  end
end
