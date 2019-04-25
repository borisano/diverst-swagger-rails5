require 'test_helper'

class GroupMessageCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_message_comment = group_message_comments(:one)
  end

  test "should get index" do
    get group_message_comments_url, as: :json
    assert_response :success
  end

  test "should create group_message_comment" do
    assert_difference('GroupMessageComment.count') do
      post group_message_comments_url, params: { group_message_comment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_message_comment" do
    get group_message_comment_url(@group_message_comment), as: :json
    assert_response :success
  end

  test "should update group_message_comment" do
    patch group_message_comment_url(@group_message_comment), params: { group_message_comment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_message_comment" do
    assert_difference('GroupMessageComment.count', -1) do
      delete group_message_comment_url(@group_message_comment), as: :json
    end

    assert_response 204
  end
end
