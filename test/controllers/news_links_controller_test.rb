require 'test_helper'

class NewsLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_link = news_links(:one)
  end

  test "should get index" do
    get news_links_url, as: :json
    assert_response :success
  end

  test "should create news_link" do
    assert_difference('NewsLink.count') do
      post news_links_url, params: { news_link: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show news_link" do
    get news_link_url(@news_link), as: :json
    assert_response :success
  end

  test "should update news_link" do
    patch news_link_url(@news_link), params: { news_link: {  } }, as: :json
    assert_response 200
  end

  test "should destroy news_link" do
    assert_difference('NewsLink.count', -1) do
      delete news_link_url(@news_link), as: :json
    end

    assert_response 204
  end
end
