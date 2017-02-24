class SorceryCore < ActiveRecord::Migration[5.0]
  def change

      
    unless User.column_names.include?('email')
      add_column :users, :email, :null => false
    end
    add_column :users, :crypted_password, :string
    add_column :users, :salt, :string
    add_index :users, :email, unique: true
  end
end
