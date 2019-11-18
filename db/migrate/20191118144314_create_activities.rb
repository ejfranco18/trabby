class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :start_time
      t.string :end_time
      t.references :plan, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
