class Manage::InstallationsController < Manage::BaseController
  def index
    @installation = Installation.all
  end

  def show
    @installation = Installation.all
  end

  def new
    @installation = Installation.new
    1.upto(3) { @installation.iphotos.build }
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @installation }
    end
  end

  def edit
    @installation = Installation.find(params[:id])
    if @installation.iphotos.first.nil?
      1.upto(3) { @installation.iphotos.build }
  end
 end

  def create
    @installation = Installation.new(params[:installation])

    respond_to do |format|
      if @installation.save
     flash[:notice] = 'Installation was sucessfully created.'   
     format.html { redirect_to manage_installation_path(@installation) }
     format.xml  { render :xml => @installation, :status => :created, :location => @installation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @installation.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    params[:iphoto_ids] ||= []
    @installation = Installation.find(params[:id])
    unless params[:iphoto_ids].empty?
      Iphoto.destroy_pics(params[:id], params[:iphoto_ids])
    end
   
    respond_to do |format|
      if @installation.update_attributes(params[:installation])
        flash[:notice] = 'Installation was successfully updated.'
        format.html { redirect_to manage_installation_path(@installation) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @installation.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
   Installation.find(params[:id]).destroy
     redirect_to manage_installation_path
  end
end
