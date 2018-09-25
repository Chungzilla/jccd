class CreateCakeDealers < ActiveRecord::Migration[5.2]
  def change
    create_table :cake_dealers do |t|

      t.timestamps
    end
  end
end
