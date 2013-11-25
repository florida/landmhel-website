class SearchController < ApplicationController
  def query
  end

  def filter
    @agents = Agent.all
    @listings = Listing.all
  end
end
