class UserAttrTwitter < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :uid, :string
    add_column :users, :token, :string
    add_column :users, :secret, :string
    add_column :users, :profile_image, :string
    add_column :users, :t_name, :string

  end
end
