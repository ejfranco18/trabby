class ChangePlacesDescriptionToArray < ActiveRecord::Migration[5.2]
  def change
      change_column :places, :description, :string, array: true, default: [], using: 'description::character varying[]'
  end
end
