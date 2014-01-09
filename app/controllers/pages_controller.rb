class PagesController < ApplicationController
  def home
  end

  def services
  end

  def contact
    @email = Email.new("","","","","")
  end

  def send_mail
    @email = Email.new(params[:email][:name],params[:email][:address],params[:email][:contact],params[:email][:subject],params[:email][:body])
    if @email.valid?      
      Emailer.contact_email(@email).deliver
      flash[:success]="Email was succesfully sent."
      redirect_to ('/')
    else
      render :contact
    end
  end
end

