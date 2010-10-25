module Manage
  class BaseController < ApplicationController

    before_filter :verify_admin

    private
    def verify_admin
      unless user_signed_in?
        flash[:notice] = "You are not authorized to view that page. Please sign in."
        redirect_to root_url
      end
    end
  end
end
