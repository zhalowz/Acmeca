class AlbumsController < ApplicationController
  def index
    @albums = Album.find(:all, :order => "name")
  end
  
  def view
    @albums = Album.find(params[:id])
  end

  def show
    @album = Album.find(params[:id])
  end
  
end
