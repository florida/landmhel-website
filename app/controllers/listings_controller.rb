class ListingsController < ApplicationController
  before_filter :load_agents, only: [:listings, :sales]

  def listings
    if ((params.keys - ["action", "controller"]) - (Listing::FILTERABLE_BY + Listing::SORTABLE_BY)).empty? 
      @listings = filter_and_sort
    else
      @listings = Listing.active
    end 
    
  end

  def listings_details
    @listing = Listing.find(params[:id])
  end

  def sales
    @listings = Listing.sold
    render 'listings'
  end

  def sales_details
  end

  private 
  def load_agents
     @agents = Agent.all
  end

  def filter_and_sort
    Listing.filter_by_property_type(params["property_type"])
    .filter_by_area(params["area"])
    .filter_by_style(params["style"])
    .filter_by_province(params["province"])
    .filter_by_agent(params["agent"])
    .filter_by_bathrooms(params["min_bathrooms"])
    .filter_by_bedrooms(params["min_bedrooms"])
    .order_by_price(params["price"])
    .order_by_bathrooms(params["bathrooms"])
    .order_by_bedrooms(params["bedrooms"])
  end
end
