class ChangePlacesFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :opening_hours
    remove_column :places, :description
    remove_column :places, :type
    remove_column :places, :rating
    remove_column :places, :images
    rename_column :places, :link, :foursquare_id
  end
end
