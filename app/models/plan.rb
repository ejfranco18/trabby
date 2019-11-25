class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :activities

  def categories
    Category.where(id: search_items)
  end
end
