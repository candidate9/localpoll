class LocalPoll < ActiveRecord::Base
  attr_accessible :constituency_id, :name

  belongs_to :poll
  belongs_to :constituency
  has_many :candidates
  has_many :votes

end
