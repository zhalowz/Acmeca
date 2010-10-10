class Category < ActiveRecord::Base
  has_many :products

  #validates :name,   :length => { :maximum => 50 }
end
