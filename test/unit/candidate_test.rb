require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  should belong_to :political_party
  should have_many :votes

  test "affilliation should return political party name" do
    assert_equal political_parties(:labour).name, candidates(:nick_black).affilliation
  end

  test "affilliation should return 'Independent' for candidations not associated with a party" do
    assert_equal 'Independent', candidates(:mr_happy).affilliation
  end


end
