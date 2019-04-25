require 'test_helper'

class InitiativeUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_user = initiative_users(:one)
  end

  test "should get index" do
    get initiative_users_url, as: :json
    assert_response :success
  end

  test "should create initiative_user" do
    assert_difference('InitiativeUser.count') do
      post initiative_users_url, params: { initiative_user: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_user" do
    get initiative_user_url(@initiative_user), as: :json
    assert_response :success
  end

  test "should update initiative_user" do
    patch initiative_user_url(@initiative_user), params: { initiative_user: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_user" do
    assert_difference('InitiativeUser.count', -1) do
      delete initiative_user_url(@initiative_user), as: :json
    end

    assert_response 204
  end
end
