class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_type
      t.integer :price
      t.integer :purveyor_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
