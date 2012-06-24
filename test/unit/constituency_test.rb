require 'test_helper'

class ConstituencyTest < ActiveSupport::TestCase

  should have_many :postcodes
  should have_many :local_polls

end
