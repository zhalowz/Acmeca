require 'spec_helper'

describe SalesController do

  def mock_sale(stubs={})
    @mock_sale ||= mock_model(Sale, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all sales as @sales" do
      Sale.stub(:all) { [mock_sale] }
      get :index
      assigns(:sales).should eq([mock_sale])
    end
  end

  describe "GET show" do
    it "assigns the requested sale as @sale" do
      Sale.stub(:find).with("37") { mock_sale }
      get :show, :id => "37"
      assigns(:sale).should be(mock_sale)
    end
  end

  describe "GET new" do
    it "assigns a new sale as @sale" do
      Sale.stub(:new) { mock_sale }
      get :new
      assigns(:sale).should be(mock_sale)
    end
  end

  describe "GET edit" do
    it "assigns the requested sale as @sale" do
      Sale.stub(:find).with("37") { mock_sale }
      get :edit, :id => "37"
      assigns(:sale).should be(mock_sale)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created sale as @sale" do
        Sale.stub(:new).with({'these' => 'params'}) { mock_sale(:save => true) }
        post :create, :sale => {'these' => 'params'}
        assigns(:sale).should be(mock_sale)
      end

      it "redirects to the created sale" do
        Sale.stub(:new) { mock_sale(:save => true) }
        post :create, :sale => {}
        response.should redirect_to(sale_url(mock_sale))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sale as @sale" do
        Sale.stub(:new).with({'these' => 'params'}) { mock_sale(:save => false) }
        post :create, :sale => {'these' => 'params'}
        assigns(:sale).should be(mock_sale)
      end

      it "re-renders the 'new' template" do
        Sale.stub(:new) { mock_sale(:save => false) }
        post :create, :sale => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested sale" do
        Sale.should_receive(:find).with("37") { mock_sale }
        mock_sale.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :sale => {'these' => 'params'}
      end

      it "assigns the requested sale as @sale" do
        Sale.stub(:find) { mock_sale(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:sale).should be(mock_sale)
      end

      it "redirects to the sale" do
        Sale.stub(:find) { mock_sale(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(sale_url(mock_sale))
      end
    end

    describe "with invalid params" do
      it "assigns the sale as @sale" do
        Sale.stub(:find) { mock_sale(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:sale).should be(mock_sale)
      end

      it "re-renders the 'edit' template" do
        Sale.stub(:find) { mock_sale(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested sale" do
      Sale.should_receive(:find).with("37") { mock_sale }
      mock_sale.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the sales list" do
      Sale.stub(:find) { mock_sale }
      delete :destroy, :id => "1"
      response.should redirect_to(sales_url)
    end
  end

end
