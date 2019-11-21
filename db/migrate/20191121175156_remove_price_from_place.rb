class RemovePriceFromPlace < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :price_id
  end
end
