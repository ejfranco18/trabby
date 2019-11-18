class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :images
      t.text :description
      t.string :opening_hours
      t.float :latitude
      t.float :longitude
      t.integer :duration
      t.string :link
      t.string :type
      t.references :city, foreign_key: true
      t.references :price, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
