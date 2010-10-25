class Manage::ProductsController < Manage::BaseController

  def index
    @categories = Category.all
    @products = Product.paginate :page => params[:page], :order => 'created_at DESC'
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @title = "Edit Product"
    @product = Product.find(params[:id])
  end

  def new
    @title = "New Product"
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:success] = "Product created."
      redirect_to manage_product_path(@product)
    else
      @title = "New product"
      render 'new'
    end
  end

  def update   
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:success] = "Product updated."
      redirect_to manage_product_path(@product)
    else
      @title = "Edit product"
      render 'edit'
    end
  end
  
  def destroy
    if Product.delete(params[:id])
      flash[:success] = "Product deleted."
      redirect_to manage_products_path
    end
  end
end
