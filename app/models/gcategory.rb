class Gcategory < ActiveRecord::Base
 
  has_many :albums

  accepts_nested_attributes_for :albums, :allow_destroy => true
  validates :name,  :presence => true,
                    :uniqueness => true,
                    :length => { :maximum => 50 }
end
