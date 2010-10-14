class ServicesController < ApplicationController

  def index

  end

  def show
@service = Service.find(params[:id])
  end

  def new
@title = "New Service"
@service = Service.new
  end

  def edit
@title = "Edit Service"
@service = Service.find(params[:id])
  end

  def create
@service = Service.new(params[:service])
if @service.save
flash[:success] = "Service Created"
redirect_to @service
else
@title = "New Service"
render 'new'
  end
end

  def update
@service = Service.find(params[:id])
if @service.update_attributes(params[:product])
flash[:success] = "Service updated"
redirect_to @service
else
@title = "Edit service"
render 'edit'
  end
end

  def destroy
  end

end
