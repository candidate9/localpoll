class Postcode < ActiveRecord::Base
  attr_accessible :constituency_id, :name

  belongs_to :constituency
end
