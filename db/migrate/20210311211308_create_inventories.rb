class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.decimal :producto_total
      t.decimal :inv_total
      t.integer :cantidad
      t.references :group, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
