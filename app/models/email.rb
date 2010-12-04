require 'active_model'

class Email
  include ActiveModel::Validations

  attr_accessor :name, :address, :contact, :subject, :body

  validates :name, :presence => true
  validates :address, :presence => true,
                      :email_format => true  
  validates :subject, :presence => true
  validates :body, :presence => true

  def initialize(name, address, contact, subject, body)
    @name, @address, @contact, @subject, @body = name, address, contact, subject, body
  end

end
