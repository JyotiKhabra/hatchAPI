class AddCreatorNaameToPackingItems < ActiveRecord::Migration
  def change
    add_column :packing_items, :creator_name, :string
  end
end
