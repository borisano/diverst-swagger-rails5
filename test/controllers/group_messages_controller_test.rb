require 'test_helper'

class GroupMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_message = group_messages(:one)
  end

  test "should get index" do
    get group_messages_url, as: :json
    assert_response :success
  end

  test "should create group_message" do
    assert_difference('GroupMessage.count') do
      post group_messages_url, params: { group_message: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_message" do
    get group_message_url(@group_message), as: :json
    assert_response :success
  end

  test "should update group_message" do
    patch group_message_url(@group_message), params: { group_message: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_message" do
    assert_difference('GroupMessage.count', -1) do
      delete group_message_url(@group_message), as: :json
    end

    assert_response 204
  end
end
