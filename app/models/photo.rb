class Photo < ActiveRecord::Base
  belongs_to :album

  has_attached_file :data,  :styles => { :small => "100x100>", :medium => "300x300>" },
                            :storage => :s3,
                            :s3_credentials => File.join(Rails.root,'config','amazon_s3.yml'),
                            :path => ":attachment/:id/:style.:extension"


  validates :data,  :presence => true
  def self.destroy_pics(album, photos)
    Photo.find(photos, :conditions => {:album_id => album}).each(&:destroy)
  end
end
 
