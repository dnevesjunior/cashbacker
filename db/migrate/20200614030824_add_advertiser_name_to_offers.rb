class AddAdvertiserNameToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :advertiser_name, :string
  end
end
