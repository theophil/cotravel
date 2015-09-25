require 'test_helper'

class TransportationUsersControllerTest < ActionController::TestCase
  setup do
    @transportation_user = transportation_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transportation_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transportation_user" do
    assert_difference('TransportationUser.count') do
      post :create, transportation_user: { dislike: @transportation_user.dislike, like: @transportation_user.like, transporation_id: @transportation_user.transporation_id, user_id: @transportation_user.user_id }
    end

    assert_redirected_to transportation_user_path(assigns(:transportation_user))
  end

  test "should show transportation_user" do
    get :show, id: @transportation_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transportation_user
    assert_response :success
  end

  test "should update transportation_user" do
    patch :update, id: @transportation_user, transportation_user: { dislike: @transportation_user.dislike, like: @transportation_user.like, transporation_id: @transportation_user.transporation_id, user_id: @transportation_user.user_id }
    assert_redirected_to transportation_user_path(assigns(:transportation_user))
  end

  test "should destroy transportation_user" do
    assert_difference('TransportationUser.count', -1) do
      delete :destroy, id: @transportation_user
    end

    assert_redirected_to transportation_users_path
  end
end
