class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :nombre
      t.decimal :sub_total, default: 0
      t.decimal :total, default: 0
      t.references :user, foreign_key: true
      t.string :slug

      t.timestamps
    end
      add_index :groups, :slug, unique: true
  end
end
