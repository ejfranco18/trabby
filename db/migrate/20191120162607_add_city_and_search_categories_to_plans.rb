class AddCityAndSearchCategoriesToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :city_id, :integer
    add_column :plans, :search_items, :array, default: []
  end
end
