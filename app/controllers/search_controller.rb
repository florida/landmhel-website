class SearchController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:query]
  def query
    if request.post?
      query = params[:query]
      @title = "Results for #{query}"
      @listings = Listing.where("address like ? or description like ?", "%#{query}%", "%#{query}%")
    else
      @title = 'No Results Found' 
      @listings = Listing.all
    end


  end

  def filter
    @agents = Agent.all
    @listings = Listing.all
  end
end
