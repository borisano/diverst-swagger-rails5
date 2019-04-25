require 'test_helper'

class GroupMessagesSegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_messages_segment = group_messages_segments(:one)
  end

  test "should get index" do
    get group_messages_segments_url, as: :json
    assert_response :success
  end

  test "should create group_messages_segment" do
    assert_difference('GroupMessagesSegment.count') do
      post group_messages_segments_url, params: { group_messages_segment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_messages_segment" do
    get group_messages_segment_url(@group_messages_segment), as: :json
    assert_response :success
  end

  test "should update group_messages_segment" do
    patch group_messages_segment_url(@group_messages_segment), params: { group_messages_segment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_messages_segment" do
    assert_difference('GroupMessagesSegment.count', -1) do
      delete group_messages_segment_url(@group_messages_segment), as: :json
    end

    assert_response 204
  end
end
