class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new

  end

  def show

  end

  def create
    @offer = Offer.create!(offer_params)
  end

  def destroy
    @offer.destroy
  end

  private

  def offer_params
    params.permit(:id, :url, :description, :starts_at, :ends_at, :premium, :advertiser_name)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
