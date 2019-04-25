require 'test_helper'

class NewsLinkCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_link_comment = news_link_comments(:one)
  end

  test "should get index" do
    get news_link_comments_url, as: :json
    assert_response :success
  end

  test "should create news_link_comment" do
    assert_difference('NewsLinkComment.count') do
      post news_link_comments_url, params: { news_link_comment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show news_link_comment" do
    get news_link_comment_url(@news_link_comment), as: :json
    assert_response :success
  end

  test "should update news_link_comment" do
    patch news_link_comment_url(@news_link_comment), params: { news_link_comment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy news_link_comment" do
    assert_difference('NewsLinkComment.count', -1) do
      delete news_link_comment_url(@news_link_comment), as: :json
    end

    assert_response 204
  end
end
