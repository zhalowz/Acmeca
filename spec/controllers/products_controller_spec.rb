require 'spec_helper'

describe Manage::ProductsController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "Product" do
    before(:each) do
      @attr = { :name => "Example Product", :description => "This is an example of a product" }
    end

    it "should create a new instance given valid attributes" do
      Product.create!(@attr)
    end

    it "should require a name" do
      nameless_product = Product.new(@attr.merge(:name => ""))
      nameless_product.should_not be_valid
    end

    it "should have a name no longer than 50 characters" do
      long_name = 'a' * 51
      long_name_product = Product.new(@attr.merge(:name => long_name))
      long_name_product.should_not be_valid
    end

    it "should have a unique name" do
      Product.create!(@attr)
      duplicate_product = Product.new(@attr)
      duplicate_product.should_not be_valid
    end

    it "should not have too long of a description" do
      long_description = 'a' * 1001
      long_description_product = Product.new(@attr.merge(:description => long_description))
      long_description_product.should_not be_valid
    end
  end
end
