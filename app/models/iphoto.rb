class Iphoto < ActiveRecord::Base
  belongs_to :installation

  has_attached_file :data, :styles => { :small => "100x100>", :medium => "300x300>" },
                    :storage => :s3,
                    :s3_credentials => {
                    	:bucket => ENV['S3_BUCKET_NAME'],
                    	:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                    	:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                    },
                    :path => ":attachment/:id/:style.:extension"


  validates :data,  :presence => true
  def self.destroy_pics(installation, iphotos)
    Iphoto.find(iphotos, :conditions => {:installation_id => installation}).each(&:destroy)
  end
end
 
