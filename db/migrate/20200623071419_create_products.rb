class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :shop, null: false, foreign_key: true
      t.integer :sku
      t.string :name
      t.string :brand
      t.string :category_name
      t.string :sub_category_name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
