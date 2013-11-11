require "test_helper"

class ListingsControllerTest < ActionController::TestCase
  test "should get listings" do
    get :listings
    assert_response :success
  end

  test "should get sales" do
    get :sales
    assert_response :success
  end

end
