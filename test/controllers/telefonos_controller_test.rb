require 'test_helper'

class TelefonosControllerTest < ActionController::TestCase
  setup do
    @telefono = telefonos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefonos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefono" do
    assert_difference('Telefono.count') do
      post :create, telefono: { restaurante_id: @telefono.restaurante_id, telefono: @telefono.telefono }
    end

    assert_redirected_to telefono_path(assigns(:telefono))
  end

  test "should show telefono" do
    get :show, id: @telefono
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefono
    assert_response :success
  end

  test "should update telefono" do
    patch :update, id: @telefono, telefono: { restaurante_id: @telefono.restaurante_id, telefono: @telefono.telefono }
    assert_redirected_to telefono_path(assigns(:telefono))
  end

  test "should destroy telefono" do
    assert_difference('Telefono.count', -1) do
      delete :destroy, id: @telefono
    end

    assert_redirected_to telefonos_path
  end
end
