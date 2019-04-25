require 'test_helper'

class BaseElasticsearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_elasticsearch = base_elasticsearches(:one)
  end

  test "should get index" do
    get base_elasticsearches_url, as: :json
    assert_response :success
  end

  test "should create base_elasticsearch" do
    assert_difference('BaseElasticsearch.count') do
      post base_elasticsearches_url, params: { base_elasticsearch: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show base_elasticsearch" do
    get base_elasticsearch_url(@base_elasticsearch), as: :json
    assert_response :success
  end

  test "should update base_elasticsearch" do
    patch base_elasticsearch_url(@base_elasticsearch), params: { base_elasticsearch: {  } }, as: :json
    assert_response 200
  end

  test "should destroy base_elasticsearch" do
    assert_difference('BaseElasticsearch.count', -1) do
      delete base_elasticsearch_url(@base_elasticsearch), as: :json
    end

    assert_response 204
  end
end
