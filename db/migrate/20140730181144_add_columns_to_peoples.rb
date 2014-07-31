class AddColumnsToPeoples < ActiveRecord::Migration
  def change
    add_column :peoples, :post, :text
  end
end
