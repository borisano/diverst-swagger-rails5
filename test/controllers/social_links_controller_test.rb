require 'test_helper'

class SocialLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_link = social_links(:one)
  end

  test "should get index" do
    get social_links_url, as: :json
    assert_response :success
  end

  test "should create social_link" do
    assert_difference('SocialLink.count') do
      post social_links_url, params: { social_link: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show social_link" do
    get social_link_url(@social_link), as: :json
    assert_response :success
  end

  test "should update social_link" do
    patch social_link_url(@social_link), params: { social_link: {  } }, as: :json
    assert_response 200
  end

  test "should destroy social_link" do
    assert_difference('SocialLink.count', -1) do
      delete social_link_url(@social_link), as: :json
    end

    assert_response 204
  end
end
