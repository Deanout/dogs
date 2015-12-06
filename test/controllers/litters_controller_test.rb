require 'test_helper'

class LittersControllerTest < ActionController::TestCase
  setup do
    @litter = litters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:litters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create litter" do
    assert_difference('Litter.count') do
      post :create, litter: { body: @litter.body, title: @litter.title }
    end

    assert_redirected_to litter_path(assigns(:litter))
  end

  test "should show litter" do
    get :show, id: @litter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @litter
    assert_response :success
  end

  test "should update litter" do
    patch :update, id: @litter, litter: { body: @litter.body, title: @litter.title }
    assert_redirected_to litter_path(assigns(:litter))
  end

  test "should destroy litter" do
    assert_difference('Litter.count', -1) do
      delete :destroy, id: @litter
    end

    assert_redirected_to litters_path
  end
end
