class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.string :product_code
      t.string :description
      t.integer :count
      t.integer :shop_id

      t.timestamps
    end
    add_foreign_key :products, :categories
    add_index :products, :category_id
  end
end
