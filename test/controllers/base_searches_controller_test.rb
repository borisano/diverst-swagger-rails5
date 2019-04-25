require 'test_helper'

class BaseSearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_search = base_searches(:one)
  end

  test "should get index" do
    get base_searches_url, as: :json
    assert_response :success
  end

  test "should create base_search" do
    assert_difference('BaseSearch.count') do
      post base_searches_url, params: { base_search: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show base_search" do
    get base_search_url(@base_search), as: :json
    assert_response :success
  end

  test "should update base_search" do
    patch base_search_url(@base_search), params: { base_search: {  } }, as: :json
    assert_response 200
  end

  test "should destroy base_search" do
    assert_difference('BaseSearch.count', -1) do
      delete base_search_url(@base_search), as: :json
    end

    assert_response 204
  end
end
