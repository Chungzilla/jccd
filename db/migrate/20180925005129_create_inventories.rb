class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :physical_count
      t.boolean :is_discrepancy

      t.timestamps
    end
  end
end
