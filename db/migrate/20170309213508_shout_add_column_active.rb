class ShoutAddColumnActive < ActiveRecord::Migration[5.0]
  def change
    add_column :shouts, :active, :boolean, default: true
  end
end
