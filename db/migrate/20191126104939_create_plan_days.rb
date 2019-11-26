class CreatePlanDays < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_days do |t|
      t.references :plan, foreign_key: true
      t.date :date
      t.json :weather_info, default: {}
    end
  end
end
