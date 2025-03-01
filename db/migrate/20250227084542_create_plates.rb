class CreatePlates < ActiveRecord::Migration[6.1]
  def change
    create_table :plates do |t|
      t.string :title
      t.integer :order
      t.references :tile_collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
