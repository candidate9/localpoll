require 'test_helper'

class VotesControllerTest < ActionController::TestCase

  test "should get a vote page" do
    get :show, :constituency_id => constituencies(:edinburgh).ons_code, :local_poll_id => local_polls(:edinburgh_general_election_2012).id

    assert_response :success

  end

  test "should be able to vote for a candidate" do

    post :create,
      :constituency_id => constituencies(:edinburgh).ons_code,
      :local_poll_id => local_polls(:edinburgh_general_election_2012).id,
      :vote => { :candidate_id => candidates(:mr_happy).id }

    assert_redirected_to(:controller => :local_poll, :id => local_polls(:edinburgh_general_election_2012).id, :action => :show, :constituency_id => constituencies(:edinburgh).ons_code)


  end

end
