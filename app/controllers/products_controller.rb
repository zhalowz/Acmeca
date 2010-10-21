class ProductsController < ApplicationController

  def index
    @products = Product.paginate :page => params[:page], :order => 'created_at DESC'
  end

  def show
    @product = Product.find(params[:id])
  end
end
