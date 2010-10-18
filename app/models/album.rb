class Album < ActiveRecord::Base
  attr_accessible :name, :photos_attributes

  validates :name, :presence => true

  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :allow_destroy => true

end
