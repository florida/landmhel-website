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
    Listing.expects(:featured)
    get :index
  end

  it "should get all listings on contact" do
    Listing.expects(:all)
    get :contact
  end

  it "should get all agent on our_team" do
    Agent.expects(:all)
    get :our_team
  end

  it "should get all listings on sitemap" do
    Listing.expects(:all)
    get :sitemap
  end

end
