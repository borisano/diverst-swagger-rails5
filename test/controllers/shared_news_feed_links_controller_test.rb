require 'test_helper'

class SharedNewsFeedLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared_news_feed_link = shared_news_feed_links(:one)
  end

  test "should get index" do
    get shared_news_feed_links_url, as: :json
    assert_response :success
  end

  test "should create shared_news_feed_link" do
    assert_difference('SharedNewsFeedLink.count') do
      post shared_news_feed_links_url, params: { shared_news_feed_link: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show shared_news_feed_link" do
    get shared_news_feed_link_url(@shared_news_feed_link), as: :json
    assert_response :success
  end

  test "should update shared_news_feed_link" do
    patch shared_news_feed_link_url(@shared_news_feed_link), params: { shared_news_feed_link: {  } }, as: :json
    assert_response 200
  end

  test "should destroy shared_news_feed_link" do
    assert_difference('SharedNewsFeedLink.count', -1) do
      delete shared_news_feed_link_url(@shared_news_feed_link), as: :json
    end

    assert_response 204
  end
end
