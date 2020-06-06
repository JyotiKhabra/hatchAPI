class CreateComponentItems < ActiveRecord::Migration
  def change
    create_table :component_items do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :address
      t.references :component, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
