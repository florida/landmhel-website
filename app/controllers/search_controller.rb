class SearchController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:query]
  def query
    query = params[:query]
    
    @listings = Listing.where("address like ? or description like ?", "%#{query}%", "%#{query}%")
    if !@listings.blank? 
      @title = "Results for #{query}"
    else 
      @title = 'No Results Found' 
      @listings = Listing.all
    end
  end
end
