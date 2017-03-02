class AddActiveAttributeToReward < ActiveRecord::Migration[5.0]
  def change
    add_column(:rewards, :active, :boolean, default: true)
  end
end
