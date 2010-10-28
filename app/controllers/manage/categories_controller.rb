class Manage::CategoriesController < Manage::BaseController

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @products = @category.products.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10
  end
end

