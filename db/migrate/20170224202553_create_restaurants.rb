class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string      :name
      t.string      :address
      t.string      :phone_number
      t.string      :rest_image
      t.timestamps
    end
  end
end
