class Category < ActiveRecord::Base

  has_many :products

  accepts_nested_attributes_for :products, :allow_destroy => true
  #validates :name,   :length => { :maximum => 50 }
end
