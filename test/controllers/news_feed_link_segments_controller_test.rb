require 'test_helper'

class NewsFeedLinkSegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_feed_link_segment = news_feed_link_segments(:one)
  end

  test "should get index" do
    get news_feed_link_segments_url, as: :json
    assert_response :success
  end

  test "should create news_feed_link_segment" do
    assert_difference('NewsFeedLinkSegment.count') do
      post news_feed_link_segments_url, params: { news_feed_link_segment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show news_feed_link_segment" do
    get news_feed_link_segment_url(@news_feed_link_segment), as: :json
    assert_response :success
  end

  test "should update news_feed_link_segment" do
    patch news_feed_link_segment_url(@news_feed_link_segment), params: { news_feed_link_segment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy news_feed_link_segment" do
    assert_difference('NewsFeedLinkSegment.count', -1) do
      delete news_feed_link_segment_url(@news_feed_link_segment), as: :json
    end

    assert_response 204
  end
end
