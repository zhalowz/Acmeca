class GcategoriesController < ApplicationController
  
  def show
    @gcategories = Gcategory.all
    @gcategory = Gcategory.find(params[:id])
    @albums = @gcategory.albums
    @albums = @gcategory.albums.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 15
  end
end
