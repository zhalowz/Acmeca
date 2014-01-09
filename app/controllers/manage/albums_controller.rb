class Manage::AlbumsController < Manage::BaseController

  def index
    @gcategories = Gcategory.all
    @albums = Album.all
  end
  
  def show
    @album = Album.find(params[:id])
  end
  
  def new
    @album = Album.new()
    3.times { @album.photos.build }
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @album }
    end
  end
  
  def create
    @album = Album.new(params[:album])
    respond_to do |format|
      if @album.save
        flash[:notice] = 'Album was successfully created.'
        format.html { redirect_to manage_album_path(@album) }
        format.xml  { render :xml => @album, :status => :created, :location => @album }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @album.errors, :status => :unprocessable_entity }
      end
    end
  end 

  def edit
    @album = Album.find(params[:id])
    3.times { @album.photos.build }
  end

  def destroy  
    Album.find(params[:id]).destroy
    redirect_to manage_albums_path
  end

  #update action
  def update
    params[:photo_ids] ||= []
    @album = Album.find(params[:id])
    unless params[:photo_ids].empty?
      Photo.destroy_pics(params[:id], params[:photo_ids])
    end
   
    respond_to do |format|
      if @album.update_attributes(params[:album])
        flash[:notice] = 'Album was successfully updated.'
        format.html { redirect_to manage_album_path(@album) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @album.errors, :status => :unprocessable_entity }
      end
    end
  end
end
