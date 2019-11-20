class Category < ApplicationRecord
  has_many :places
  has_many :activities, through: :places
  has_many :preferences
end
