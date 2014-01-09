class Emailer < ActionMailer::Base

  default :from => "no-reply@test.net"
  default :to => "hu_kai_yuan@hotmail.com"

    def contact_email(email_params)
        #@recipients = "acmeca@singnet.com.sg"
        @email_params = email_params
      
        mail(:subject => email_params.subject, :reply_to => email_params.address, :date => Time.now)  
    
        #@from = email_params.name
        #@subject = email_params.subject
        #@sent_on = Time.now
        #@body["email_body"] = email_params.body
        #@body["email_name"] = email_params.name
        #@body["email_contact"] = email_params.contact
        #@body["email_subject"] = email_params.subject
	#@body["email_address"] = email_params.address
	#@body["email_time"] = @sent_on
        #content_type "text/html"
    end
end
