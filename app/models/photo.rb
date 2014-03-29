require 'paperclip'
class Photo < ActiveRecord::Base
  belongs_to :album
 
  has_attached_file :data,  :styles => { :small => "200x150!", :medium => "500x500>" },
                            :storage => :s3,
                            :s3_credentials => {
                              :bucket => ENV['S3_BUCKET_NAME'],
                              :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                              :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                            },
                            :path => ":rails_root/public/images/:id/:style/:basename.:extension",
                            :url => "/images/:id/:style/:basename.:extension"

  validates :data,  :presence => true
  def self.destroy_pics(album, photos)
    Photo.find(photos, :conditions => {:album_id => album}).each(&:destroy)
  end
end
 
