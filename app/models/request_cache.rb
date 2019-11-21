class RequestCache < ApplicationRecord
  validates :url, presence: true, uniqueness: true

  def self.get(url)
    cached = find_by(url: url)

    return cached.response.with_indifferent_access if cached.present?

    response = RestClient.get(url)

    json = JSON.parse(response.body).with_indifferent_access

    create(url: url, response: json)

    json
  end
end
