require 'test_helper'

class SocialLinkSegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_link_segment = social_link_segments(:one)
  end

  test "should get index" do
    get social_link_segments_url, as: :json
    assert_response :success
  end

  test "should create social_link_segment" do
    assert_difference('SocialLinkSegment.count') do
      post social_link_segments_url, params: { social_link_segment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show social_link_segment" do
    get social_link_segment_url(@social_link_segment), as: :json
    assert_response :success
  end

  test "should update social_link_segment" do
    patch social_link_segment_url(@social_link_segment), params: { social_link_segment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy social_link_segment" do
    assert_difference('SocialLinkSegment.count', -1) do
      delete social_link_segment_url(@social_link_segment), as: :json
    end

    assert_response 204
  end
end
