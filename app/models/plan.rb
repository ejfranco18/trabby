class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :plan_days, dependent: :destroy
  has_many :activities, through: :plan_days

  def categories
    Category.where(id: category_ids)
  end
end
