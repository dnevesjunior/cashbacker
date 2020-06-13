class Offer < ApplicationRecord
  belongs_to :advertiser
  validates :advertiser, :url, :description, :starts_at, presence: true
  validates :url, format: URI::regexp(%w[http https])
  validates :description, length: { maximum: 500 }
end
