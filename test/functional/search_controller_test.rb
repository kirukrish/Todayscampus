require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get controller" do
    get :controller
    assert_response :success
  end

  test "should get all_search" do
    get :all_search
    assert_response :success
  end

end
