require 'test_helper'

class VoteTest < ActiveSupport::TestCase

  should belong_to :candidate
  should belong_to :local_poll

end
