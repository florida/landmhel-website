class HomeController < ApplicationController

skip_before_filter :verify_authenticity_token, :only => [:contact]

  def index
    @featured_listings = Listing.all
  end

  def contact
    @listings = Listing.all

    #TODO: Try catch for errors
    if request.post?
      Inquiry.create(name: params["contact_name"], 
                     email: params["email"],
                     phone: params["phone"],
                     listing_id: params["listing_id"],
                     comment: params["comment"],
                     agent_id: params["agent_id"])
      flash[:success] = "Thank you!"
    end


   
  end

  def about
  end

  def our_team
    @agents = Agent.all
  end

  def services
  end

  def sample
  end

  def sitemap
    @listings = Listing.all
  end

end
