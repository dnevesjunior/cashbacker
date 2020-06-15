class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)

    if @offer.save
      redirect_to offers_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @offer.update(offer_params)
      redirect_to offers_path
    else
      render 'edit'
    end
  end

  def destroy
    @offer.destroy

    redirect_to offers_path
  end

  def status
    offer = Offer.find(update_status_params[:offer_id])
    offer.update_attributes(disabled_by_admin: !offer.disabled_by_admin)
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:advertiser_name, :url, :description, :starts_at, :ends_at, :premium)
  end

  def update_status_params
    params.permit(:offer_id)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
