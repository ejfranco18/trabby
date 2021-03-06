class Place < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :city
  belongs_to :category
  has_many :activities, dependent: :destroy
end
