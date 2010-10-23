class Service < ActiveRecord::Base
  attr_accessible :header, :description
  validates :header, 
	    :presence => true,
	    :uniqueness => true

end
