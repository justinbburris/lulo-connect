require 'test_helper'

class MarketsControllerTest < ActionController::TestCase
  setup do
    @market = markets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market" do
    assert_difference('Market.count') do
      post :create, market: { city: @market.city, hours_of_operation: @market.hours_of_operation, name: @market.name, state: @market.state, street: @market.street, user_id: @market.user_id, website: @market.website, zip: @market.zip }
    end

    assert_redirected_to market_path(assigns(:market))
  end

  test "should show market" do
    get :show, id: @market
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market
    assert_response :success
  end

  test "should update market" do
    put :update, id: @market, market: { city: @market.city, hours_of_operation: @market.hours_of_operation, name: @market.name, state: @market.state, street: @market.street, user_id: @market.user_id, website: @market.website, zip: @market.zip }
    assert_redirected_to market_path(assigns(:market))
  end

  test "should destroy market" do
    assert_difference('Market.count', -1) do
      delete :destroy, id: @market
    end

    assert_redirected_to markets_path
  end
end
