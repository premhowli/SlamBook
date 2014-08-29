class CreateSlamrequests < ActiveRecord::Migration
  def change
    create_table :slamrequests do |t|
      t.string :type
      t.string :reqfrom
      t.string :reqto
      t.string :reqtype

      t.timestamps
    end
  end
end
