class AddUpdatedAtToPlanDays < ActiveRecord::Migration[5.2]
  def change
    add_column :plan_days, :updated_at, :datetime
  end
end
