class ProductsController < ApplicationController

  def index
    @categories = Category.all
    @products = Product.paginate :page => params[:page], :order => 'name ASC'
  end

  def show
    @product = Product.find(params[:id])
  end
end
