class HomeController < ApplicationController
before_action :initialize_inquiry, only: [:services, :about, :contact, :our_team]

  def index
    @featured_listings = Listing.featured
  end

  def contact
    @listings = Listing.all

    if request.post?
      begin
        @inquiry = Inquiry.new(contact_params)
        if @inquiry.save
          flash.now[:success] = "<strong>Thank you!</strong> The form has been submitted, we'll get back to you as soon as possible.".html_safe
        else
          flash.now[:warning] = "We've encountered problems in the form"
        end
      rescue Exception => e
        Rails.logger.error("Inquiry error: #{e.message}")
        flash.now[:danger] = "<strong>Sorry!</strong>, We had some problems submitting your inquiry. Please try again later.!".html_safe
      end
    end
  end

  def our_team
    @agents = Agent.all
  end

  def sitemap
    @listings = Listing.all
  end

  def initialize_inquiry
    @inquiry = Inquiry.new
  end

  def services
  end

  def about
  end

  private

  def contact_params
    params.require(:inquiry).permit(:name, :phone, :email, :comment, :listing_id, :agent_id)
  end
end
