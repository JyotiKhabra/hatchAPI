class RemoveCreatorNameFromPackingItems < ActiveRecord::Migration
  def change
    remove_column :packing_items, :creator_name, :string
  end
end
