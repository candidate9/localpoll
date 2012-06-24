class Candidate < ActiveRecord::Base
  attr_accessible :link, :name, :political_party_id

  belongs_to :political_party
  belongs_to :local_poll
  has_many :votes


  def affilliation
    political_party ? political_party.name : "Independent"
  end

end
