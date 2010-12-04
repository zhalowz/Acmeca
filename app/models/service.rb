class Service < ActiveRecord::Base
  attr_accessible :header, :description
  validates :header, 
	    :presence => true,
	    :uniqueness => true

  validates :description, :length => { :maximum => 10000 }
end
