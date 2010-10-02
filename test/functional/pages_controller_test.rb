require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get Services" do
    get :Services
    assert_response :success
  end

  test "should get Gallary" do
    get :Gallary
    assert_response :success
  end

  test "should get Products" do
    get :Products
    assert_response :success
  end

  test "should get Contact" do
    get :Contact
    assert_response :success
  end

end
