class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.references :user, foreign_key: true
      t.integer :category_ids, array: true, default: []
      t.integer :type_ids, array: true, default: []

      t.timestamps
    end
  end
end
