class HomeController < ApplicationController
before_action :initialize_inquiry, only: [:services, :about, :contact, :our_team]
skip_before_filter :verify_authenticity_token, :only => [:contact]

  def index
    @featured_listings = Listing.all
  end

  def contact
    
    @listings = Listing.all

    #TODO: Try catch for errors
    if request.post?
      Inquiry.create(contact_params)
      flash.now[:success] = "Thank you!"
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

  def initialize_inquiry
    @inquiry = Inquiry.new
  end

  private 

  def contact_params
    params.require(:inquiry).permit(:name, :phone, :email, :comment, :listing_id, :agent_id)
  end

end
