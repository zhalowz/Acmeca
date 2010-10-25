class Manage::ServicesController < Manage::BaseController

  def index
    @services = Service.all
  end

  def show
    @services = Service.all
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
      redirect_to manage_service_path(@service)
    else
      @title = "New Service"
      render 'new'
    end
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(params[:service])
      flash[:success] = "Service updated"
      redirect_to manage_service_path(@service)
    else
      @title = "Edit service"
      render 'edit'
    end
  end

  def destroy  
    Service.find(params[:id]).destroy
    redirect_to manage_services_path
  end
end
