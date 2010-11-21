class Manage::SalesController < Manage::BaseController
  def index
    @sales = Sale.all
  end

  def show
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def edit
    @sale = Sale.find(params[:id])
  end

  def create
    @sale = Sale.new(params[:sale])
   if @sale.save
   flash[:success] = "Sale Created"
   redirect_to manage_sale_path(@sale)
   else
   render 'new'
   end
  end

  def update
    @sale = Sale.find(params[:id])
    if @sale.update_attributes(params[:sale])
      flash[:success] = "Sale updated"
      redirect_to manage_sale_path(@sale)
    else
      @title = "Edit sale"
      render 'edit'
    end
  end

  def destroy
   Sale.find(params[:id]).destroy
   redirect_to manage_sales_path
  end
end
