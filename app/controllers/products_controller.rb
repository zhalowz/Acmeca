class ProductsController < ApplicationController

  def index
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
      redirect_to @product
    else
      @title = "New product"
      render 'new'
    end
  end

  def update   
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:success] = "Product updated."
      redirect_to @product
    else
      @title = "Edit product"
      render 'edit'
    end
  end

end
