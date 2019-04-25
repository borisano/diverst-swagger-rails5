require 'test_helper'

class PolicyGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policy_group = policy_groups(:one)
  end

  test "should get index" do
    get policy_groups_url, as: :json
    assert_response :success
  end

  test "should create policy_group" do
    assert_difference('PolicyGroup.count') do
      post policy_groups_url, params: { policy_group: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show policy_group" do
    get policy_group_url(@policy_group), as: :json
    assert_response :success
  end

  test "should update policy_group" do
    patch policy_group_url(@policy_group), params: { policy_group: {  } }, as: :json
    assert_response 200
  end

  test "should destroy policy_group" do
    assert_difference('PolicyGroup.count', -1) do
      delete policy_group_url(@policy_group), as: :json
    end

    assert_response 204
  end
end
