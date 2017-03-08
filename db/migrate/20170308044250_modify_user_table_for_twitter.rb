class ModifyUserTableForTwitter < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string

    add_column :users, :token, :string
    add_column :users, :secret, :string

    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :email, :string
  end
end
