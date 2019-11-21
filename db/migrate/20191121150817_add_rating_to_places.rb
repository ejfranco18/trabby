class AddRatingToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :rating, :float
  end
end
