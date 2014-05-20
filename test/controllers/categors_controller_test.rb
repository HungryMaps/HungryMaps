require 'test_helper'

class CategorsControllerTest < ActionController::TestCase
  setup do
    @categor = categors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categor" do
    assert_difference('Categor.count') do
      post :create, categor: { nombre_categoria: @categor.nombre_categoria }
    end

    assert_redirected_to categor_path(assigns(:categor))
  end

  test "should show categor" do
    get :show, id: @categor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categor
    assert_response :success
  end

  test "should update categor" do
    patch :update, id: @categor, categor: { nombre_categoria: @categor.nombre_categoria }
    assert_redirected_to categor_path(assigns(:categor))
  end

  test "should destroy categor" do
    assert_difference('Categor.count', -1) do
      delete :destroy, id: @categor
    end

    assert_redirected_to categors_path
  end
end
