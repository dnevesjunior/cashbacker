class AddAdvertiserToOffers < ActiveRecord::Migration[6.0]
  def change
    add_reference :offers, :advertiser, null: false, foreign_key: true
  end
end
