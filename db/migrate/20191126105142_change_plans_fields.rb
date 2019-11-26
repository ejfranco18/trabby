class ChangePlansFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :search_items
    add_column :plans, :category_ids, :integer, array: true, default: []
  end
end
