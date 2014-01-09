require 'paperclip'
class Photo < ActiveRecord::Base
  belongs_to :album
 
  has_attached_file :data,  :styles => { :small => "200x150!", :medium => "500x500>" },
                            :storage => :s3,
                            :s3_credentials => File.join(Rails.root,'config','amazon_s3.yml'),
                            :path => ":rails_root/public/images/:id/:style/:basename.:extension",
                            :url => "/images/:id/:style/:basename.:extension"


  validates :data,  :presence => true
  def self.destroy_pics(album, photos)
    Photo.find(photos, :conditions => {:album_id => album}).each(&:destroy)
  end
end
 
