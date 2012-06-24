require 'test_helper'

class ResultsControllerTest < ActionController::TestCase

  test "should get a results page" do
    get :show, :poll_id => polls(:general_election_2012).id

    assert_response :success
    assert_not_nil assigns(:poll)

  end

end
