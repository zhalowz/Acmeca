class AlbumsController < ApplicationController
 
 def index
    @gcategories = Gcategory.all
    @albums = Album.find(:all, :order => "name")
    @albums = Album.paginate :page => params[:page], :order => 'created_at DESC'
  end
  
  def view
    @albums = Album.find(params[:id])
  end

  def show
    @album = Album.find(params[:id])
  end
  
end
