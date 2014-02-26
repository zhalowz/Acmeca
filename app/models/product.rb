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
                    :s3_credentials => File.join(Rails.root,'config','amazon_s3.yml'),
                    :path => ":attachment/:id/:style.:extension"
end
