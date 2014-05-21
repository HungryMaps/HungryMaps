require 'test_helper'

class NutricionsControllerTest < ActionController::TestCase
  setup do
    @nutricion = nutricions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutricions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutricion" do
    assert_difference('Nutricion.count') do
      post :create, nutricion: { energia: @nutricion.energia, grasas: @nutricion.grasas, hidratos: @nutricion.hidratos, menu_id: @nutricion.menu_id, proteinas: @nutricion.proteinas, sal: @nutricion.sal }
    end

    assert_redirected_to nutricion_path(assigns(:nutricion))
  end

  test "should show nutricion" do
    get :show, id: @nutricion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nutricion
    assert_response :success
  end

  test "should update nutricion" do
    patch :update, id: @nutricion, nutricion: { energia: @nutricion.energia, grasas: @nutricion.grasas, hidratos: @nutricion.hidratos, menu_id: @nutricion.menu_id, proteinas: @nutricion.proteinas, sal: @nutricion.sal }
    assert_redirected_to nutricion_path(assigns(:nutricion))
  end

  test "should destroy nutricion" do
    assert_difference('Nutricion.count', -1) do
      delete :destroy, id: @nutricion
    end

    assert_redirected_to nutricions_path
  end
end
