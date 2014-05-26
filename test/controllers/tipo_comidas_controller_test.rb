require 'test_helper'

class TipoComidasControllerTest < ActionController::TestCase
  setup do
    @tipo_comida = tipo_comidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_comidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_comida" do
    assert_difference('TipoComida.count') do
      post :create, tipo_comida: { tipo_comida: @tipo_comida.tipo_comida }
    end

    assert_redirected_to tipo_comida_path(assigns(:tipo_comida))
  end

  test "should show tipo_comida" do
    get :show, id: @tipo_comida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_comida
    assert_response :success
  end

  test "should update tipo_comida" do
    patch :update, id: @tipo_comida, tipo_comida: { tipo_comida: @tipo_comida.tipo_comida }
    assert_redirected_to tipo_comida_path(assigns(:tipo_comida))
  end

  test "should destroy tipo_comida" do
    assert_difference('TipoComida.count', -1) do
      delete :destroy, id: @tipo_comida
    end

    assert_redirected_to tipo_comidas_path
  end
end
