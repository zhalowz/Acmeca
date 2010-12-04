class Email
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :address, :contact, :subject, :body

	validates_presence_of :name  
        validates_format_of :address, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i  
  	validates :subject, :presence => true
	validates_presence_of :body  
        validates_length_of :body, :maximum => 5000  


	def initialize(attributes = {})
	attributes.each do |name,value|
		send("#{name}=", value)
	end
	end

	def persisted?
	false
	end
end
