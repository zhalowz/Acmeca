require "spec_helper"

describe SalesController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/sales" }.should route_to(:controller => "sales", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/sales/new" }.should route_to(:controller => "sales", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/sales/1" }.should route_to(:controller => "sales", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/sales/1/edit" }.should route_to(:controller => "sales", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/sales" }.should route_to(:controller => "sales", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/sales/1" }.should route_to(:controller => "sales", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/sales/1" }.should route_to(:controller => "sales", :action => "destroy", :id => "1")
    end

  end
end
