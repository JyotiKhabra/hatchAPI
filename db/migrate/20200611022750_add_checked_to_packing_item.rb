class AddCheckedToPackingItem < ActiveRecord::Migration
    def change
      remove_column :packing_items, :checked
    end
end
