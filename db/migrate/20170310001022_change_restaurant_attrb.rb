class ChangeRestaurantAttrb < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :rest_image, :string
    add_column  :restaurants, :rest_img, :string
  end
end
