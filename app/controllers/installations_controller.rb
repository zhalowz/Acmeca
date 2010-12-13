class InstallationsController < ApplicationController
  def index
    @installation = Installation.all
  end

  def show
    @installation = Installation.find(params[:id])
  end

  def index2
    @installation = Installation.all
  end
end
