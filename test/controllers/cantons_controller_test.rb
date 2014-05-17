require 'test_helper'

class CantonsControllerTest < ActionController::TestCase
  setup do
    @canton = cantons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cantons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canton" do
    assert_difference('Canton.count') do
      post :create, canton: { nombre_canton: @canton.nombre_canton, provincia_id: @canton.provincia_id }
    end

    assert_redirected_to canton_path(assigns(:canton))
  end

  test "should show canton" do
    get :show, id: @canton
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canton
    assert_response :success
  end

  test "should update canton" do
    patch :update, id: @canton, canton: { nombre_canton: @canton.nombre_canton, provincia_id: @canton.provincia_id }
    assert_redirected_to canton_path(assigns(:canton))
  end

  test "should destroy canton" do
    assert_difference('Canton.count', -1) do
      delete :destroy, id: @canton
    end

    assert_redirected_to cantons_path
  end
end
