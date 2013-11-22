class ListingsController < ApplicationController
  def listings
    @listings = Listing.active
  end

  def listings_details
    @listing = Listing.find(params[:id])
  end

  def sales
    @listing = Listing.sold
    render 'listings'
  end

  def sales_details
  end

  private 

  def set_listing

  end
end
