class Product < ActiveRecord::Base

  cattr_reader :per_page
  @@per_page = 10

  attr_accessor :description_html

  belongs_to :category

  validates :name,  :presence => true,
                    :uniqueness => true,
                    :length => { :maximum => 50 }
  validates :description, :length => { :maximum => 1000 }

  has_attached_file :photo #:styles => { :small => "150x150>",
                            #             :large => "500x500>" }
end
