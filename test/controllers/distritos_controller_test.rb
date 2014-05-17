require 'test_helper'

class DistritosControllerTest < ActionController::TestCase
  setup do
    @distrito = distritos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distritos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distrito" do
    assert_difference('Distrito.count') do
      post :create, distrito: { canton_id: @distrito.canton_id, direccion_id: @distrito.direccion_id, nombre_distrito: @distrito.nombre_distrito }
    end

    assert_redirected_to distrito_path(assigns(:distrito))
  end

  test "should show distrito" do
    get :show, id: @distrito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distrito
    assert_response :success
  end

  test "should update distrito" do
    patch :update, id: @distrito, distrito: { canton_id: @distrito.canton_id, direccion_id: @distrito.direccion_id, nombre_distrito: @distrito.nombre_distrito }
    assert_redirected_to distrito_path(assigns(:distrito))
  end

  test "should destroy distrito" do
    assert_difference('Distrito.count', -1) do
      delete :destroy, id: @distrito
    end

    assert_redirected_to distritos_path
  end
end
