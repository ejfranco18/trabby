class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :activities
end
