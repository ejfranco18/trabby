class City < ApplicationRecord
  has_many :places, dependent: :destroy

  def best_image
    image
  end
end
