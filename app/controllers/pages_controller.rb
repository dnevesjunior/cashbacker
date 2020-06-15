class PagesController < ApplicationController
  def main
    @offers = Offer.display_filter.select do |offer|
      offer.current_status == 'enabled'
    end
  end
end