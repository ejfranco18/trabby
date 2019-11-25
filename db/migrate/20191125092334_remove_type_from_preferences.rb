class RemoveTypeFromPreferences < ActiveRecord::Migration[5.2]
  def change
    remove_column :preferences, :type_ids
  end
end
