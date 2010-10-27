class ServicesController < ApplicationController

  def index
    @service = Service.all
  end


end
