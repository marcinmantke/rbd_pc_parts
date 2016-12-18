class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :real_id, null: false, unique: true
      t.string :name

      t.timestamps
    end

    add_index :categories, :real_id, unique: true
  end
end
