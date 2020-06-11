class AddToPackingItem < ActiveRecord::Migration
  def change
     add_column :packing_items, :checked, :boolean, default:false
  end
end
