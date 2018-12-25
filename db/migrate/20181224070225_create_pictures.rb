class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :picture
      t.integer :pictureable_id
      t.string :pictureable_type

      t.timestamps
    end
    add_index :pictures, [:pictureable_type, :pictureable_id]
  end
end
