class CreateProductCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |t|
      t.string :name
      t.text :description
      t.string :cover_image

      t.timestamps
    end
  end
end
