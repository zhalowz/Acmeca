class Manage::GcategoriesController < Manage::ApplicationController
  
  def show
    @gcategories = Gcategory.all
    @gcategory = Gcategory.find(params[:id])
    @albums = @gcategory.albums
  end
end
