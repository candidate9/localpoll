class Poll < ActiveRecord::Base
  attr_accessible :name

  has_many :local_polls
  has_many :candidates, :through => :local_polls
  has_many :votes, :through => :local_polls

  def political_parties
    PoliticalParty.find(candidates.with_political_party.uniq.pluck(:political_party_id))
  end

  def independent_votes
    votes.joins(:candidate).where(:candidates => {:political_party_id => nil})
  end

  def nil_votes
    votes.where(:candidate_id => nil)
  end

end
