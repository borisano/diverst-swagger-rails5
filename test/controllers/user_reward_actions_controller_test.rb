require 'test_helper'

class UserRewardActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_reward_action = user_reward_actions(:one)
  end

  test "should get index" do
    get user_reward_actions_url, as: :json
    assert_response :success
  end

  test "should create user_reward_action" do
    assert_difference('UserRewardAction.count') do
      post user_reward_actions_url, params: { user_reward_action: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_reward_action" do
    get user_reward_action_url(@user_reward_action), as: :json
    assert_response :success
  end

  test "should update user_reward_action" do
    patch user_reward_action_url(@user_reward_action), params: { user_reward_action: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_reward_action" do
    assert_difference('UserRewardAction.count', -1) do
      delete user_reward_action_url(@user_reward_action), as: :json
    end

    assert_response 204
  end
end
