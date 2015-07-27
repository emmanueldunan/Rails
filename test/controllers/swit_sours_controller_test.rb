require 'test_helper'

class SwitSoursControllerTest < ActionController::TestCase
  setup do
    @swit_sour = swit_sours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swit_sours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swit_sour" do
    assert_difference('SwitSour.count') do
      post :create, swit_sour: { rating: @swit_sour.rating }
    end

    assert_redirected_to swit_sour_path(assigns(:swit_sour))
  end

  test "should show swit_sour" do
    get :show, id: @swit_sour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swit_sour
    assert_response :success
  end

  test "should update swit_sour" do
    patch :update, id: @swit_sour, swit_sour: { rating: @swit_sour.rating }
    assert_redirected_to swit_sour_path(assigns(:swit_sour))
  end

  test "should destroy swit_sour" do
    assert_difference('SwitSour.count', -1) do
      delete :destroy, id: @swit_sour
    end

    assert_redirected_to swit_sours_path
  end
end
