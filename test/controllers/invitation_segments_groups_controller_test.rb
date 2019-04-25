require 'test_helper'

class InvitationSegmentsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invitation_segments_group = invitation_segments_groups(:one)
  end

  test "should get index" do
    get invitation_segments_groups_url, as: :json
    assert_response :success
  end

  test "should create invitation_segments_group" do
    assert_difference('InvitationSegmentsGroup.count') do
      post invitation_segments_groups_url, params: { invitation_segments_group: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show invitation_segments_group" do
    get invitation_segments_group_url(@invitation_segments_group), as: :json
    assert_response :success
  end

  test "should update invitation_segments_group" do
    patch invitation_segments_group_url(@invitation_segments_group), params: { invitation_segments_group: {  } }, as: :json
    assert_response 200
  end

  test "should destroy invitation_segments_group" do
    assert_difference('InvitationSegmentsGroup.count', -1) do
      delete invitation_segments_group_url(@invitation_segments_group), as: :json
    end

    assert_response 204
  end
end
