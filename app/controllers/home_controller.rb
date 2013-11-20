class HomeController < ApplicationController
  def index
    @featured_listings = Listing.all
  end

  def contact
  end

  def about
  end

  def our_team
  end

  def sample
  end
end
