class Vote < ActiveRecord::Base
  attr_accessible :candidate_id, :local_poll_id

  belongs_to :candidate
  belongs_to :local_poll

end
