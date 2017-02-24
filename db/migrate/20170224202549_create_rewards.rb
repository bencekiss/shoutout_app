class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.integer     :restaurant_id
      t.string      :name
      t.text        :description
      t.integer     :point_value
      
      t.timestamps
    end
  end
end
