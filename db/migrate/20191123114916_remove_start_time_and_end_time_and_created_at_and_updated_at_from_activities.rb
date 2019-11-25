class RemoveStartTimeAndEndTimeAndCreatedAtAndUpdatedAtFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :start_time, :string
    remove_column :activities, :end_time, :string
    remove_column :activities, :created_at, :datetime
    remove_column :activities, :updated_at, :datetime
  end
end
