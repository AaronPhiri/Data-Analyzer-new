require 'test_helper'

class AvailableSystemsControllerTest < ActionController::TestCase
  setup do
    @available_system = available_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_system" do
    assert_difference('AvailableSystem.count') do
      post :create, available_system: {  }
    end

    assert_redirected_to available_system_path(assigns(:available_system))
  end

  test "should show available_system" do
    get :show, id: @available_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_system
    assert_response :success
  end

  test "should update available_system" do
    patch :update, id: @available_system, available_system: {  }
    assert_redirected_to available_system_path(assigns(:available_system))
  end

  test "should destroy available_system" do
    assert_difference('AvailableSystem.count', -1) do
      delete :destroy, id: @available_system
    end

    assert_redirected_to available_systems_path
  end
end
