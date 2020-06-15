class Offer < ApplicationRecord
  # Validations
  validates :advertiser_name, :url, :description, :starts_at, presence: true
  validates :advertiser_name, uniqueness: true
  validates :url, format: URI::regexp(%w[http https])
  validates :description, length: { maximum: 500 }
  # Scopes
  scope :display_filter, -> { where(disabled_by_admin: false).order(premium: :desc) }

  def current_status
    return 'disabled by admin' if disabled_by_admin
    is_status_enabled? ? 'enabled' : 'disabled'
  end

  def is_status_enabled?
    return DateTime.now.between?(starts_at, ends_at) unless ends_at.nil?
    starts_at <= DateTime.now
  end
end
