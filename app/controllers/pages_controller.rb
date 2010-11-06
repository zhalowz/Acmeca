class PagesController < ApplicationController
  def home
  end

  def services
  end

  def gallery
  end

  def contact
  end

 
 def send_mail
    Emailer::deliver_contact_email(params[:email])
    flash.now[:notice]="Email was succesfully sent."
    redirect_to ('/')
  end
end

