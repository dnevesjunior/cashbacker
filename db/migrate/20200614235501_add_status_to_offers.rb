class AddStatusToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :disabled_by_admin, :boolean, default: false
  end
end
