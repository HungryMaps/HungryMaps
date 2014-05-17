require 'test_helper'

class ProvinsControllerTest < ActionController::TestCase
  setup do
    @provin = provins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provin" do
    assert_difference('Provin.count') do
      post :create, provin: { direccion_id: @provin.direccion_id, nombre_provincia: @provin.nombre_provincia }
    end

    assert_redirected_to provin_path(assigns(:provin))
  end

  test "should show provin" do
    get :show, id: @provin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provin
    assert_response :success
  end

  test "should update provin" do
    patch :update, id: @provin, provin: { direccion_id: @provin.direccion_id, nombre_provincia: @provin.nombre_provincia }
    assert_redirected_to provin_path(assigns(:provin))
  end

  test "should destroy provin" do
    assert_difference('Provin.count', -1) do
      delete :destroy, id: @provin
    end

    assert_redirected_to provins_path
  end
end
