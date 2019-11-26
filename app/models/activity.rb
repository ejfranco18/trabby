class Activity < ApplicationRecord
  belongs_to :plan_day
  belongs_to :place
end
