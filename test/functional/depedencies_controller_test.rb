require 'test_helper'

class DepedenciesControllerTest < ActionController::TestCase
  setup do
    @depedency = depedencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:depedencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create depedency" do
    assert_difference('Depedency.count') do
      post :create, depedency: { name: @depedency.name }
    end

    assert_redirected_to depedency_path(assigns(:depedency))
  end

  test "should show depedency" do
    get :show, id: @depedency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @depedency
    assert_response :success
  end

  test "should update depedency" do
    put :update, id: @depedency, depedency: { name: @depedency.name }
    assert_redirected_to depedency_path(assigns(:depedency))
  end

  test "should destroy depedency" do
    assert_difference('Depedency.count', -1) do
      delete :destroy, id: @depedency
    end

    assert_redirected_to depedencies_path
  end
end
