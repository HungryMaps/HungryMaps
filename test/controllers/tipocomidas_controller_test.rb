require 'test_helper'

class TipocomidasControllerTest < ActionController::TestCase
  setup do
    @tipocomida = tipocomidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipocomidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipocomida" do
    assert_difference('Tipocomida.count') do
      post :create, tipocomida: { restaurante_id: @tipocomida.restaurante_id, tipocomida: @tipocomida.tipocomida }
    end

    assert_redirected_to tipocomida_path(assigns(:tipocomida))
  end

  test "should show tipocomida" do
    get :show, id: @tipocomida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipocomida
    assert_response :success
  end

  test "should update tipocomida" do
    patch :update, id: @tipocomida, tipocomida: { restaurante_id: @tipocomida.restaurante_id, tipocomida: @tipocomida.tipocomida }
    assert_redirected_to tipocomida_path(assigns(:tipocomida))
  end

  test "should destroy tipocomida" do
    assert_difference('Tipocomida.count', -1) do
      delete :destroy, id: @tipocomida
    end

    assert_redirected_to tipocomidas_path
  end
end
