require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get results" do
    get :results
    assert_response :success
  end

end
