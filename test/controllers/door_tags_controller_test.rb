require 'test_helper'

class DoorTagsControllerTest < ActionController::TestCase
  setup do
    @door_tag = door_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:door_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create door_tag" do
    assert_difference('DoorTag.count') do
      post :create, door_tag: { tag: @door_tag.tag }
    end

    assert_redirected_to door_tag_path(assigns(:door_tag))
  end

  test "should show door_tag" do
    get :show, id: @door_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @door_tag
    assert_response :success
  end

  test "should update door_tag" do
    patch :update, id: @door_tag, door_tag: { tag: @door_tag.tag }
    assert_redirected_to door_tag_path(assigns(:door_tag))
  end

  test "should destroy door_tag" do
    assert_difference('DoorTag.count', -1) do
      delete :destroy, id: @door_tag
    end

    assert_redirected_to door_tags_path
  end
end
