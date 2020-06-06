class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :title
      t.references :destination, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
