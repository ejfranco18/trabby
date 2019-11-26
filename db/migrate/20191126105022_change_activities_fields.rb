class ChangeActivitiesFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :plan_id
    remove_column :activities, :date
    add_reference :activities, :plan_day, foreign_key: true
  end
end
