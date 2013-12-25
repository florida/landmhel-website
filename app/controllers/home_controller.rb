class HomeController < ApplicationController
before_action :initialize_inquiry, only: [:services, :about, :contact, :our_team]

  def index
    @featured_listings = Listing.all
  end

  def contact
    
    @listings = Listing.all

    if request.post?
      begin
        Inquiry.create(contact_params)
        flash.now[:success] = "Thank you!"
      rescue Exception => e
        Rails.logger.error("Inquiry error: #{e.message}")
        flash.now[:error] = "Thank you!"
      end
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
