require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  should belong_to :political_party
  should have_many :votes

end
