require 'spec_helper'

describe ServicesController do

  def mock_service(stubs={})
    @mock_service ||= mock_model(Service, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all services as @services" do
      Service.stub(:all) { [mock_service] }
      get :index
      assigns(:services).should eq([mock_service])
    end
  end

  describe "GET show" do
    it "assigns the requested service as @service" do
      Service.stub(:find).with("37") { mock_service }
      get :show, :id => "37"
      assigns(:service).should be(mock_service)
    end
  end

  describe "GET new" do
    it "assigns a new service as @service" do
      Service.stub(:new) { mock_service }
      get :new
      assigns(:service).should be(mock_service)
    end
  end

  describe "GET edit" do
    it "assigns the requested service as @service" do
      Service.stub(:find).with("37") { mock_service }
      get :edit, :id => "37"
      assigns(:service).should be(mock_service)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created service as @service" do
        Service.stub(:new).with({'these' => 'params'}) { mock_service(:save => true) }
        post :create, :service => {'these' => 'params'}
        assigns(:service).should be(mock_service)
      end

      it "redirects to the created service" do
        Service.stub(:new) { mock_service(:save => true) }
        post :create, :service => {}
        response.should redirect_to(service_url(mock_service))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved service as @service" do
        Service.stub(:new).with({'these' => 'params'}) { mock_service(:save => false) }
        post :create, :service => {'these' => 'params'}
        assigns(:service).should be(mock_service)
      end

      it "re-renders the 'new' template" do
        Service.stub(:new) { mock_service(:save => false) }
        post :create, :service => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested service" do
        Service.should_receive(:find).with("37") { mock_service }
        mock_service.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :service => {'these' => 'params'}
      end

      it "assigns the requested service as @service" do
        Service.stub(:find) { mock_service(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:service).should be(mock_service)
      end

      it "redirects to the service" do
        Service.stub(:find) { mock_service(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(service_url(mock_service))
      end
    end

    describe "with invalid params" do
      it "assigns the service as @service" do
        Service.stub(:find) { mock_service(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:service).should be(mock_service)
      end

      it "re-renders the 'edit' template" do
        Service.stub(:find) { mock_service(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested service" do
      Service.should_receive(:find).with("37") { mock_service }
      mock_service.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the services list" do
      Service.stub(:find) { mock_service }
      delete :destroy, :id => "1"
      response.should redirect_to(services_url)
    end
  end

end
