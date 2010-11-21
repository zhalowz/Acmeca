class Manage::RentalsController < Manage::BaseController
  def index
    @rentals = Rental.all
  end

  def show
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def create
    @rental = Rental.new(params[:rental])
    if @rental.save
 	flash[:success] = "Rental Created"
	redirect_to manage_rental_path(@rental)
    else
       render 'new'
    end
  end

  def update
    @rental = Rental.find(params[:id])
    if @rental.update_attributes(params[:rental])
      flash[:success] = "Rental updated"
      redirect_to manage_rental_path(@rental)
    else
      @title = "Edit rental"
      render 'edit'
    end
  end

  # DELETE /rentals/1
  # DELETE /rentals/1.xml
  def destroy
    Rental.find(params[:id]).destroy
    redirect_to manage_rentals_path
  end
end
