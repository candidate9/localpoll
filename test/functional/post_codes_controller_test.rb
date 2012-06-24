require 'test_helper'

class PostCodesControllerTest < ActionController::TestCase

  test "should get redirected when requesting a postocode" do
    get :show, :postcode => postcodes(:m12_45a).name

    assert_redirected_to constituency_local_poll_path(constituencies(:edinburgh), local_polls(:edinburgh_general_election_2012))
  end

  test "should show a not_found page when requesting an invalid postcode" do
    get :show, :postcode => "XX"

    assert_response :not_found
  end


end
