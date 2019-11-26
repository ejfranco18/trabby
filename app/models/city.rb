class City < ApplicationRecord
  has_many :places, dependent: :destroy
end
