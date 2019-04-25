require 'test_helper'

class RewardActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reward_action = reward_actions(:one)
  end

  test "should get index" do
    get reward_actions_url, as: :json
    assert_response :success
  end

  test "should create reward_action" do
    assert_difference('RewardAction.count') do
      post reward_actions_url, params: { reward_action: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show reward_action" do
    get reward_action_url(@reward_action), as: :json
    assert_response :success
  end

  test "should update reward_action" do
    patch reward_action_url(@reward_action), params: { reward_action: {  } }, as: :json
    assert_response 200
  end

  test "should destroy reward_action" do
    assert_difference('RewardAction.count', -1) do
      delete reward_action_url(@reward_action), as: :json
    end

    assert_response 204
  end
end
