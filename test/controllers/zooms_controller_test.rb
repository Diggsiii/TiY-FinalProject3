require 'test_helper'

class ZoomsControllerTest < ActionController::TestCase
  setup do
    @zoom = zooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zoom" do
    assert_difference('Zoom.count') do
      post :create, zoom: { description: @zoom.description }
    end

    assert_redirected_to zoom_path(assigns(:zoom))
  end

  test "should show zoom" do
    get :show, id: @zoom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zoom
    assert_response :success
  end

  test "should update zoom" do
    patch :update, id: @zoom, zoom: { description: @zoom.description }
    assert_redirected_to zoom_path(assigns(:zoom))
  end

  test "should destroy zoom" do
    assert_difference('Zoom.count', -1) do
      delete :destroy, id: @zoom
    end

    assert_redirected_to zooms_path
  end
end
