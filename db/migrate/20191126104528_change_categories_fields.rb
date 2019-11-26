class ChangeCategoriesFields < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :foursquare_category_id, :foursquare_id
    rename_column :categories, :category, :name
    add_column :categories, :icon_url, :string
  end
end
