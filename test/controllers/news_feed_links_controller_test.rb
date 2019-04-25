require 'test_helper'

class NewsFeedLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_feed_link = news_feed_links(:one)
  end

  test "should get index" do
    get news_feed_links_url, as: :json
    assert_response :success
  end

  test "should create news_feed_link" do
    assert_difference('NewsFeedLink.count') do
      post news_feed_links_url, params: { news_feed_link: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show news_feed_link" do
    get news_feed_link_url(@news_feed_link), as: :json
    assert_response :success
  end

  test "should update news_feed_link" do
    patch news_feed_link_url(@news_feed_link), params: { news_feed_link: {  } }, as: :json
    assert_response 200
  end

  test "should destroy news_feed_link" do
    assert_difference('NewsFeedLink.count', -1) do
      delete news_feed_link_url(@news_feed_link), as: :json
    end

    assert_response 204
  end
end
