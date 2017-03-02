class AddShoutImageToShouts < ActiveRecord::Migration[5.0]
  def change
    add_column :shouts, :shout_image, :string
  end
end
