class Offer < ApplicationRecord
  # Validations
  validates :advertiser_name, :url, :description, :starts_at, presence: true
  validates :advertiser_name, uniqueness: true
  validates :url, format: URI::regexp(%w[http https])
  validates :description, length: { maximum: 500 }
end
