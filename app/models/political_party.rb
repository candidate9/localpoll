class PoliticalParty < ActiveRecord::Base
  attr_accessible :name

  has_many :candidates
  has_many :votes, :through => :candidates

  def votes_in(poll)
    votes.joins(:local_poll).where("local_polls.poll_id" => poll)
  end

end
