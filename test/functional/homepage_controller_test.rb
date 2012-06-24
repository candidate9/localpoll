require 'test_helper'

class HomepageControllerTest < ActionController::TestCase

  test "should get the homepage" do
    get :show

    assert_response :success
  end

end
