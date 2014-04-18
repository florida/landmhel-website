class ListingsController < ApplicationController
  before_filter :load_agents, only: [:listings, :sales]

  def listings

    if !(params.keys - ["action", "controller"]).empty? && ((params.keys - ["action", "controller"]) - (Listing::FILTERABLE_BY + Listing::SORTABLE_BY)).empty?
      @listings = filter_and_sort

      @title = "Filtered Results"
      @filtered_by = ""
      @filtered_by += (!params["property_type"].nil?) ? "Property Type: " + params["property_type"] + " " : ""
      @filtered_by += (!params["area"].nil?) ? "Area: " + params["area"] + " " : ""
      @filtered_by += (!params["style"].nil?) ? "Style: " + params["style"] + " " : ""
      @filtered_by += (!params["province"].nil?) ? "Province: " + params["province"] + " " : ""
      @filtered_by += (!params["min_bathrooms"].nil?) ? "Min Bathrooms: " + params["min_bathrooms"] + " " : ""
      @filtered_by += (!params["min_bedrooms"].nil?) ? "Min Bedrooms: " + params["min_bedrooms"] + " " : ""
      @sorted_by = ""
      @sorted_by += (!params["bedrooms"].nil?) ? "Bedrooms: " + params["bedrooms"] + " " : ""
      @sorted_by += (!params["bathrooms"].nil?) ? "Bathrooms: " + params["bathrooms"] + " " : ""
      @sorted_by += (!params["price"].nil?) ? "Price: " + params["price"] + " " : ""
      @sorted_by += (!params["agent"].nil?) ? "Agent: " + Agent.find(params["agent"]).to_s + " " : ""
    else
      @listings = Listing.active
      @title = "All Listings"
    end

  end

  def listings_details
    @inquiry = Inquiry.new
    @listing = Listing.find(params[:id])
  end

  def sales
    @listings = Listing.sold
    @title = "Sales"
    render 'listings'
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
