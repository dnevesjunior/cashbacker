class Advertiser < ApplicationRecord
  has_many :offers, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
end
