class Product < ActiveRecord::Base

  validates :name,  :presence => true,
                    :uniqueness => true,
                    :length => { :maximum => 50 }
  validates :description, :length => { :maximum => 1000 }
  has_attached_file :photo
end
