require 'test_helper'

class AccomodationUsersControllerTest < ActionController::TestCase
  setup do
    @accomodation_user = accomodation_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accomodation_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accomodation_user" do
    assert_difference('AccomodationUser.count') do
      post :create, accomodation_user: { accomodation_id: @accomodation_user.accomodation_id, dislike: @accomodation_user.dislike, like: @accomodation_user.like, user_id: @accomodation_user.user_id }
    end

    assert_redirected_to accomodation_user_path(assigns(:accomodation_user))
  end

  test "should show accomodation_user" do
    get :show, id: @accomodation_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accomodation_user
    assert_response :success
  end

  test "should update accomodation_user" do
    patch :update, id: @accomodation_user, accomodation_user: { accomodation_id: @accomodation_user.accomodation_id, dislike: @accomodation_user.dislike, like: @accomodation_user.like, user_id: @accomodation_user.user_id }
    assert_redirected_to accomodation_user_path(assigns(:accomodation_user))
  end

  test "should destroy accomodation_user" do
    assert_difference('AccomodationUser.count', -1) do
      delete :destroy, id: @accomodation_user
    end

    assert_redirected_to accomodation_users_path
  end
end
