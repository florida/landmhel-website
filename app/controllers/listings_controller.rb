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
    Listing.by_property_type(params["property_type"])
    .by_area(params["area"])
    .by_style(params["style"])
    .by_province(params["province"])
    .by_agent(params["agent"])
    .by_price(params["price"])
    .by_bathrooms(params["bathrooms"])
    .by_bedrooms(params["bedrooms"])
  end
end
