class PagesController < ApplicationController
  def home
  end

  def services
  end

  def contact
    @email = Email.new
  end

  def send_mail
    @email = Email.new(params[:email])
    if @email.valid?
      Emailer::deliver_contact_email(@email)
      flash[:success]="Email was succesfully sent."
      redirect_to ('/')
    else
      render "contact"
    end
  end
end

