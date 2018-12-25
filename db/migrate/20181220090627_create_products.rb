class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :product_category_id
      t.string :cover_image
      t.boolean :is_active
      t.string :status

      t.timestamps
    end
  end
end
