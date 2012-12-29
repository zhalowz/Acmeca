class GcategoriesController < ApplicationController
  
  def show
    @gcategories = Gcategory.all
    @gcategory = Gcategory.find(params[:id])
    @albums = @gcategory.albums
    @albums = @gcategory.albums.paginate :page => params[:page], :order => 'name ASC', :per_page => 23
  end
end
