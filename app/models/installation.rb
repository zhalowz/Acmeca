class Installation < ActiveRecord::Base
  attr_accessible :name, :iphotos_attributes

  validates :name, :presence => true

  has_many :iphotos, :dependent => :destroy
  accepts_nested_attributes_for :iphotos, :allow_destroy => true

end
