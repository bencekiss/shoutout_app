class RemoveSorceryFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :remember_me_token, :string
    remove_column :users, :remember_me_token_expires_at, :string
    remove_column :users, :salt, :string
    remove_column :users, :crypted_password, :string
    remove_column :users, :email, :string
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :username, :string
  end
end
