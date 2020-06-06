class CreatePackingItems < ActiveRecord::Migration
  def change
    create_table :packing_items do |t|
      t.text :description
      t.references :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
