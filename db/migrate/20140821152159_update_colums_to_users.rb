class UpdateColumsToUsers < ActiveRecord::Migration
  def change
remove_column :users, :name, :string
add_column :users, :fname, :string
add_column :users, :lname, :string  
end
end
