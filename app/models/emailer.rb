class Emailer < ActionMailer::Base
 
  validates :body,  :presence => true
  validates :name,  :presence => true
  validates :subject,  :presence => true
  validates :address,  :presence => true

 def contact_email(email_params)
    @recipients = "hu_kai_yuan@hotmail.com"
    @from = email_params[:name] + " <" + email_params[:address] + ">"
    @subject = email_params[:subject]
    @sent_on = Time.now
    @body["email_body"] = email_params[:body]
    @body["email_name"] = email_params[:name]
    @body["email_subject"] = email_params[:subject]
    @body["email_address"] = email_params[:address]
    @body["email_time"] = Time.now
    content_type "text/html"
  end
end
