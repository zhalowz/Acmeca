class ProductsController < ApplicationController

  def index
    @categories = Category.all
    @products = Product.paginate :page => params[:page], :order => 'created_at DESC'
  end

  def show
    @product = Product.find(params[:id])
  end
end
