class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :real_id, null: false, unique: true
      t.string :name
      t.string :category_id
      t.string :product_code
      t.string :description
      t.integer :count
      t.string :shop_id

      t.timestamps
    end
    add_index :products, :category_id, unique: true
    add_index :products, :real_id, unique: true
    # add_foreign_key :products, :categories, column: :category_id, primary_key: :real_id
  end
end
