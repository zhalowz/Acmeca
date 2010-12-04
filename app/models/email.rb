class Email
  include ActiveModel::Validations
  attr_accessor :name, :address, :contact, :subject, :body

  validates :name, :presence => true
  validates :address, :presence => true,
                      :email_format => true  
  validates :subject, :presence => true
  validates :body, :presence => true

end
