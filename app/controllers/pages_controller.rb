class PagesController < ApplicationController
  def main
    @offers = Offer.all
  end
end