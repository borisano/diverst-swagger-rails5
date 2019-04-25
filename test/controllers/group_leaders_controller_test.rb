require 'test_helper'

class GroupLeadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_leader = group_leaders(:one)
  end

  test "should get index" do
    get group_leaders_url, as: :json
    assert_response :success
  end

  test "should create group_leader" do
    assert_difference('GroupLeader.count') do
      post group_leaders_url, params: { group_leader: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_leader" do
    get group_leader_url(@group_leader), as: :json
    assert_response :success
  end

  test "should update group_leader" do
    patch group_leader_url(@group_leader), params: { group_leader: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_leader" do
    assert_difference('GroupLeader.count', -1) do
      delete group_leader_url(@group_leader), as: :json
    end

    assert_response 204
  end
end
