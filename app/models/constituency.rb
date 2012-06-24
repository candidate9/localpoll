class Constituency < ActiveRecord::Base
  attr_accessible :name, :ons_code

  has_many :local_polls
  has_many :postcodes

end
