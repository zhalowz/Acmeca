class Category < ActiveRecord::Base

  has_many :products

  accepts_nested_attributes_for :products, :allow_destroy => true
  validates :name,  :presence => true,
                    :uniqueness => true,
                    :length => { :maximum => 50 }
end
