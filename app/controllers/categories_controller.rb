class CategoriesController < ApplicationController

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @products = @category.products.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 12
  end
end
