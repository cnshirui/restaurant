require 'test_helper'

class BurdensControllerTest < ActionController::TestCase
  setup do
    @burden = burdens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:burdens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create burden" do
    assert_difference('Burden.count') do
      post :create, burden: { dish_id: @burden.dish_id, material_id: @burden.material_id, quantity: @burden.quantity }
    end

    assert_redirected_to burden_path(assigns(:burden))
  end

  test "should show burden" do
    get :show, id: @burden
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @burden
    assert_response :success
  end

  test "should update burden" do
    patch :update, id: @burden, burden: { dish_id: @burden.dish_id, material_id: @burden.material_id, quantity: @burden.quantity }
    assert_redirected_to burden_path(assigns(:burden))
  end

  test "should destroy burden" do
    assert_difference('Burden.count', -1) do
      delete :destroy, id: @burden
    end

    assert_redirected_to burdens_path
  end
end
