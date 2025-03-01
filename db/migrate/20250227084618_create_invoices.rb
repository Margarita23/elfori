class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.string :name
      t.string :phone
      t.references :tile_collection, null: false, foreign_key: true
      t.references :plate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
