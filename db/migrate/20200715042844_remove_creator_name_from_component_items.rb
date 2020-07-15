class RemoveCreatorNameFromComponentItems < ActiveRecord::Migration
  def change
    remove_column :component_items, :creator_name, :string
  end
end
