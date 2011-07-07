require 'spec_helper'

describe GcategoriesController do

  def mock_gcategory(stubs={})
    @mock_gcategory ||= mock_model(Gcategory, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all gcategories as @gcategories" do
      Gcategory.stub(:all) { [mock_gcategory] }
      get :index
      assigns(:gcategories).should eq([mock_gcategory])
    end
  end

  describe "GET show" do
    it "assigns the requested gcategory as @gcategory" do
      Gcategory.stub(:find).with("37") { mock_gcategory }
      get :show, :id => "37"
      assigns(:gcategory).should be(mock_gcategory)
    end
  end

  describe "GET new" do
    it "assigns a new gcategory as @gcategory" do
      Gcategory.stub(:new) { mock_gcategory }
      get :new
      assigns(:gcategory).should be(mock_gcategory)
    end
  end

  describe "GET edit" do
    it "assigns the requested gcategory as @gcategory" do
      Gcategory.stub(:find).with("37") { mock_gcategory }
      get :edit, :id => "37"
      assigns(:gcategory).should be(mock_gcategory)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created gcategory as @gcategory" do
        Gcategory.stub(:new).with({'these' => 'params'}) { mock_gcategory(:save => true) }
        post :create, :gcategory => {'these' => 'params'}
        assigns(:gcategory).should be(mock_gcategory)
      end

      it "redirects to the created gcategory" do
        Gcategory.stub(:new) { mock_gcategory(:save => true) }
        post :create, :gcategory => {}
        response.should redirect_to(gcategory_url(mock_gcategory))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved gcategory as @gcategory" do
        Gcategory.stub(:new).with({'these' => 'params'}) { mock_gcategory(:save => false) }
        post :create, :gcategory => {'these' => 'params'}
        assigns(:gcategory).should be(mock_gcategory)
      end

      it "re-renders the 'new' template" do
        Gcategory.stub(:new) { mock_gcategory(:save => false) }
        post :create, :gcategory => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested gcategory" do
        Gcategory.should_receive(:find).with("37") { mock_gcategory }
        mock_gcategory.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :gcategory => {'these' => 'params'}
      end

      it "assigns the requested gcategory as @gcategory" do
        Gcategory.stub(:find) { mock_gcategory(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:gcategory).should be(mock_gcategory)
      end

      it "redirects to the gcategory" do
        Gcategory.stub(:find) { mock_gcategory(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(gcategory_url(mock_gcategory))
      end
    end

    describe "with invalid params" do
      it "assigns the gcategory as @gcategory" do
        Gcategory.stub(:find) { mock_gcategory(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:gcategory).should be(mock_gcategory)
      end

      it "re-renders the 'edit' template" do
        Gcategory.stub(:find) { mock_gcategory(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested gcategory" do
      Gcategory.should_receive(:find).with("37") { mock_gcategory }
      mock_gcategory.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the gcategories list" do
      Gcategory.stub(:find) { mock_gcategory }
      delete :destroy, :id => "1"
      response.should redirect_to(gcategories_url)
    end
  end

end
