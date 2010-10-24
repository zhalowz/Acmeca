class Photo < ActiveRecord::Base
  belongs_to :album

  has_attached_file :data, :styles => { :small => "100x100>", :medium => "300x300>" }
  validates :data,  :presence => true
  def self.destroy_pics(album, photos)
    Photo.find(photos, :conditions => {:album_id => album}).each(&:destroy)
  end
end
 
