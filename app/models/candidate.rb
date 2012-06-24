class Candidate < ActiveRecord::Base
  attr_accessible :link, :name, :political_party_id

  belongs_to :political_party
  belongs_to :local_poll
  has_many :votes

  scope :with_political_party, where("political_party_id IS NOT NULL")

  def affilliation
    political_party ? political_party.name : "Independent"
  end

end
