require 'test_helper'

class FarmsControllerTest < ActionController::TestCase
  setup do
    @farm = farms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farm" do
    assert_difference('Farm.count') do
      post :create, farm: { city: @farm.city, crops: @farm.crops, growing_season: @farm.growing_season, hours_of_operation: @farm.hours_of_operation, name: @farm.name, size_in_acres: @farm.size_in_acres, state: @farm.state, street: @farm.street, type_of_farm: @farm.type_of_farm, user_id: @farm.user_id, volunteers_needed: @farm.volunteers_needed, website: @farm.website, zip: @farm.zip }
    end

    assert_redirected_to farm_path(assigns(:farm))
  end

  test "should show farm" do
    get :show, id: @farm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farm
    assert_response :success
  end

  test "should update farm" do
    put :update, id: @farm, farm: { city: @farm.city, crops: @farm.crops, growing_season: @farm.growing_season, hours_of_operation: @farm.hours_of_operation, name: @farm.name, size_in_acres: @farm.size_in_acres, state: @farm.state, street: @farm.street, type_of_farm: @farm.type_of_farm, user_id: @farm.user_id, volunteers_needed: @farm.volunteers_needed, website: @farm.website, zip: @farm.zip }
    assert_redirected_to farm_path(assigns(:farm))
  end

  test "should destroy farm" do
    assert_difference('Farm.count', -1) do
      delete :destroy, id: @farm
    end

    assert_redirected_to farms_path
  end
end
