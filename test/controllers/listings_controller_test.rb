require "test_helper"

describe ListingsController do
  [:sales, :listings].each do |page|
    it "should return success on #{page}" do
      get page
      assert_response :success
    end
  end  
end
