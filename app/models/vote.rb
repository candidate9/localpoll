class Vote < ActiveRecord::Base
  attr_accessible :candidate_id, :local_poll_id
end
