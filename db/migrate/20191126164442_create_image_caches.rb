class CreateImageCaches < ActiveRecord::Migration[5.2]
  def change
    create_table :image_caches do |t|
      t.string :foursquare_id
      t.string :cl_id

      t.timestamps
    end
  end
end
