class AddCategoryIdToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :foursquare_category_id, :string
  end
end
