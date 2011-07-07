require "spec_helper"

describe GcategoriesController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/gcategories" }.should route_to(:controller => "gcategories", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/gcategories/new" }.should route_to(:controller => "gcategories", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/gcategories/1" }.should route_to(:controller => "gcategories", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/gcategories/1/edit" }.should route_to(:controller => "gcategories", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/gcategories" }.should route_to(:controller => "gcategories", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/gcategories/1" }.should route_to(:controller => "gcategories", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/gcategories/1" }.should route_to(:controller => "gcategories", :action => "destroy", :id => "1")
    end

  end
end
