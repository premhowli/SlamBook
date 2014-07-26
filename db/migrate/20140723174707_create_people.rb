class CreatePeople < ActiveRecord::Migration
  

def up
 create_table :peoples do |t|
  t.string :name , :null => false, :default =>""
  t.string :sex , :null => false, :default =>""
  t.timestamps
 end
end

def down
drop_table :peoples
end
end
