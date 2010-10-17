require 'paperclip'
class Photo < ActiveRecord::Base
  belongs_to :album

  has_attached_file :data, 
  :styles => { :medium => "300x300#>", :thumb => "100x100#>" }
  validates_attachment_presence :data
  validates_attachment_content_type :data, :content_type => ['image/jpg','image/png','image/gif','image/jpeg'], :message => "has to be in jpg,jpeg,png or gif format"

def self.destroy_pics(album, photos)
  Photo.find(photos, :conditions => {:album_id => album}).each(&:destroy)
end

end
 
