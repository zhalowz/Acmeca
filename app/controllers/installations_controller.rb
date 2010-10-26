class InstallationsController < ApplicationController
  def index
    @installation = Installation.all
  end

end
