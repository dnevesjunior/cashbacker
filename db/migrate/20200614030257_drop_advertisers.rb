class DropAdvertisers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :offers, :advertiser, foreign_key: true 
    drop_table :advertisers
  end
end
