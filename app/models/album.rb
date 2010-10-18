class Album < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true

  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :allow_destroy => true

  def photo_attributes(photo_attributes)
    photo_attributes.each do |attributes|
      photos.build(attributes)
    end
  end
end
