require "test_helper"

describe HomeController do
  [:index, :contact, :services, :about, :our_team, :sitemap].each do |page|
    it "should return success on #{page}" do
      get page
      assert_response :success
    end
  end

  [:services, :about, :contact, :our_team].each do |page|
    it "should invoke #initialize_inquiry on #{page}" do
      get page
      @controller.instance_variable_get("@inquiry").must_be_instance_of(Inquiry)
    end
  end

  it "should get featured listings on index" do
    get :index
    assigns(:featured_listings).must_equal(Listing.featured)
  end

  it "should get all listings on contact" do
    get :contact
    assigns(:listings).must_equal(Listing.all)
  end

  it "should get all agent on our_team" do
    get :our_team
    assigns(:agents).must_equal(Agent.all)
  end

  it "should get all listings on sitemap" do
    get :sitemap
    assigns(:listings).must_equal(Listing.all)
  end

end
