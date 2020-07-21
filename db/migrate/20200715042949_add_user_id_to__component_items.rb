class AddUserIdToComponentItems < ActiveRecord::Migration
  def change
    add_column :component_items, :user_id, :integer
  end
end
