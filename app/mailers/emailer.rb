class Emailer < ActionMailer::Base
  default :from => "from@example.com"

    def contact_email(email_params)
        @recipients = "zhalowz@gmail.com"
        @from = email_params[:name] + " <" + email_params[:address] + ">"
        @subject = email_params[:subject]
        @sent_on = Time.now
        @body["email_body"] = email_params[:body]
        @body["email_name"] = email_params[:name]
        content_type "text/html"
    end
end
