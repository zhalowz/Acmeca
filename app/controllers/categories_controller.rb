class CategoriesController < ApplicationController

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @products = @category.products.paginate :page => params[:page], :order => 'name ASC', :per_page => 10
  end

end
