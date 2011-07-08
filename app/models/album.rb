class Album < ActiveRecord::Base

  cattr_reader :per_page
  @@per_page = 23

  attr_accessible :name, :photos_attributes, :gcategory_id
 
  belongs_to :gcategory

  validates :name, :presence => true
  
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :allow_destroy => true

end
