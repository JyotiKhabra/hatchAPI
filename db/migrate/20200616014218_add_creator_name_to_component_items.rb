class AddCreatorNameToComponentItems < ActiveRecord::Migration
  def change
    add_column :component_items, :creator_name, :string
  end
end
