class Candidate < ActiveRecord::Base
  attr_accessible :link, :name, :political_party_id
end
