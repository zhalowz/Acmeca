class Product < ActiveRecord::Base

  cattr_reader :per_page
  @@per_page = 4

  attr_accessor :description_html

  belongs_to :category

  validates :name,  :presence => true,
                    :uniqueness => true,
                    :length => { :maximum => 50 }
  validates :description, :length => { :maximum => 10000 }

  has_attached_file :photo, 
                    :styles => { :small => "200x250!", :large => "350x350>" },
                    :storage => :s3,
                    :s3_credentials => {
                      :bucket => ENV['S3_BUCKET_NAME'],
                      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                    },
                    :path => ":attachment/:id/:style.:extension"
end
