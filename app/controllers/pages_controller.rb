class PagesController < ApplicationController
  def home
  end

  def Services
  end

  def Gallary
  end

  def Products
  end

  def Contact
  end

  def send_mail
	Emailer::deliver_contact_email(params[:email])
	flash.now[:notice]="Email was succesfully sent."
	redirect_to('/')
   end

end
