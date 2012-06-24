require 'test_helper'

class LocalPollControllerTest < ActionController::TestCase

  test "should get a local Poll" do
    get :show, :id => local_polls(:edinburgh_general_election_2012).id, :constituency_id => constituencies(:edinburgh).ons_code

    assert_response :success
    assert_not_nil assigns(:local_poll)

  end

end
