require 'test_helper'

class LocalPollTest < ActiveSupport::TestCase

  should belong_to :poll
  should have_many :candidates
  should have_many :votes

end
