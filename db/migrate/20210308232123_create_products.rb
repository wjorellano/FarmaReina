class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :nombre
      t.integer :existencia
      t.decimal :p_costo, precision: 8, scale: 2
      t.decimal :p_minimo, precision: 8, scale: 2
      t.decimal :p_venta, precision: 8, scale: 2
      t.decimal :total_costo, precision: 8, scale: 2
      t.decimal :v_precio_venta, precision: 8, scale: 2
      t.integer :iva
      t.string :gondola
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
