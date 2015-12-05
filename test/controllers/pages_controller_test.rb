require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get litters" do
    get :litters
    assert_response :success
  end

  test "should get photos" do
    get :photos
    assert_response :success
  end

  test "should get location" do
    get :location
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
