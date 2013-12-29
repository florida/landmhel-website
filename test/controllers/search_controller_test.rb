require "test_helper"

describe SearchController do
  it "should return success on query" do
    get :query
    assert_response :success
  end
end