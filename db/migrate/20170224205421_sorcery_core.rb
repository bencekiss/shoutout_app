class SorceryCore < ActiveRecord::Migration[5.0]
  def change


    unless User.column_names.include?('username')
      add_column :users, :username, :string
    end
    # add_column :users, :crypted_password, :string
    # add_column :users, :salt, :string
    add_index :users, :username, unique: true
  end
end
