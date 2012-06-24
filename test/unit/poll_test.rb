require 'test_helper'

class PollTest < ActiveSupport::TestCase


  should have_many :local_polls
  should have_many :candidates
  should have_many :votes

  test "political_parties" do

    parties = polls(:general_election_2012).political_parties

    assert_equal 2, parties.size
    assert parties.include?(political_parties(:conservatives))
    assert parties.include?(political_parties(:labour))

  end

  test "nil_votes" do
    assert_equal [votes(:none_of_the_above_vote)], polls(:general_election_2012).nil_votes
  end

  test "independent_votes" do
    assert_equal [votes(:mr_happy_vote)], polls(:general_election_2012).independent_votes
  end


end
