require 'spec_helper'

describe UsersController do
  render_views

=begin
  describe "GET 'new'" do
    it "should be successful" do
     get :new
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "New User")
    end
  end

  describe "POST 'create'" do
    describe "failure" do
      before (:each) do
        @attr = { name => "", :email => "", :password => "",
                   :password_confirmation => ""}
      end

      it "should not create a user" do
        lambda do
          post :create, :user => :attr
        end.should_not change(User, :count)
      end

      it "should have the right title" do
        post :create, :user => @attr
        response.should have_selector("title", :content => "New User")
      end

    end
  end
=end
end
