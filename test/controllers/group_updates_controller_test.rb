require 'test_helper'

class GroupUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_update = group_updates(:one)
  end

  test "should get index" do
    get group_updates_url, as: :json
    assert_response :success
  end

  test "should create group_update" do
    assert_difference('GroupUpdate.count') do
      post group_updates_url, params: { group_update: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_update" do
    get group_update_url(@group_update), as: :json
    assert_response :success
  end

  test "should update group_update" do
    patch group_update_url(@group_update), params: { group_update: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_update" do
    assert_difference('GroupUpdate.count', -1) do
      delete group_update_url(@group_update), as: :json
    end

    assert_response 204
  end
end
