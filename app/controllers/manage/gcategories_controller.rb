class Manage::GcategoriesController < Manage::BaseController
  
  def show
    @gcategories = Gcategory.all
    @gcategory = Gcategory.find(params[:id])
    @albums = @gcategory.albums
  end
end
