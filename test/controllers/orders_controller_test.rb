require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  fixtures :users
  
  setup do
    @order = orders(:one)
    # puts @order.inspect
    user = users(:one)
    # post '/login', :name => user.name, :password => 'secret'
    @request = ActionController::TestRequest.new
    @request.session[:user_id] = user.id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { dish_id: @order.dish_id, meal_id: @order.meal_id }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { dish_id: @order.dish_id, meal_id: @order.meal_id }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
