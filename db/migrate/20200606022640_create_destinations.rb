class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.references :trip, index: true, foreign_key: true
      t.decimal :lat
      t.decimal :lng

      t.timestamps null: false
    end
  end
end
