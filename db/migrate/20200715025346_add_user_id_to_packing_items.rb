class AddUserIdToPackingItems < ActiveRecord::Migration
  def change
    add_column :packing_items, :user_id, :integer
  end
end
