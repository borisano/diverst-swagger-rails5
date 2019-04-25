require 'test_helper'

class NewsFeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_feed = news_feeds(:one)
  end

  test "should get index" do
    get news_feeds_url, as: :json
    assert_response :success
  end

  test "should create news_feed" do
    assert_difference('NewsFeed.count') do
      post news_feeds_url, params: { news_feed: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show news_feed" do
    get news_feed_url(@news_feed), as: :json
    assert_response :success
  end

  test "should update news_feed" do
    patch news_feed_url(@news_feed), params: { news_feed: {  } }, as: :json
    assert_response 200
  end

  test "should destroy news_feed" do
    assert_difference('NewsFeed.count', -1) do
      delete news_feed_url(@news_feed), as: :json
    end

    assert_response 204
  end
end
