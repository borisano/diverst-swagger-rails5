require 'test_helper'

class NewsLinkPhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_link_photo = news_link_photos(:one)
  end

  test "should get index" do
    get news_link_photos_url, as: :json
    assert_response :success
  end

  test "should create news_link_photo" do
    assert_difference('NewsLinkPhoto.count') do
      post news_link_photos_url, params: { news_link_photo: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show news_link_photo" do
    get news_link_photo_url(@news_link_photo), as: :json
    assert_response :success
  end

  test "should update news_link_photo" do
    patch news_link_photo_url(@news_link_photo), params: { news_link_photo: {  } }, as: :json
    assert_response 200
  end

  test "should destroy news_link_photo" do
    assert_difference('NewsLinkPhoto.count', -1) do
      delete news_link_photo_url(@news_link_photo), as: :json
    end

    assert_response 204
  end
end
