class DropRewardsUsers < ActiveRecord::Migration[5.0]
  def change
    drop_table(:rewards_users)
  end
end
