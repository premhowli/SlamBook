class UpdateColumsToSlamrequests < ActiveRecord::Migration
  def change
remove_column :slamrequests, :type, :string  
remove_column :slamrequests, :reqfrom, :string
remove_column :slamrequests, :reqto, :string
remove_column :slamrequests, :reqtype, :string
add_column :slamrequests, :request_type, :string        
add_column :slamrequests, :to_user_id, :string 
add_column :slamrequests, :from_user_id, :string
add_column :slamrequests, :request_permission, :string                       
end
end
