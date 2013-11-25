require "test_helper"

class SearchControllerTest < ActionController::TestCase
  test "should get query" do
    get :query
    assert_response :success
  end

  test "should get filter" do
    get :filter
    assert_response :success
  end

end
