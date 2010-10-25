module Manage
  class BaseController < ApplicationController

    before_filter :verify_admin

    private
    def verify_admin
      flash[:notice] = "You are not authorized to view this page. Please sign in."
      redirect_to root_url unless user_signed_in?
    end
  end
end
