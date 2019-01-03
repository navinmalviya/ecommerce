class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :product_category, foreign_key: true
      t.string :cover_image
      t.string :image
      t.boolean :is_active
      t.string :status

      t.timestamps
    end
  end
end
