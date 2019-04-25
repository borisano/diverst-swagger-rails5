require 'test_helper'

class BaseGraphsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_graph = base_graphs(:one)
  end

  test "should get index" do
    get base_graphs_url, as: :json
    assert_response :success
  end

  test "should create base_graph" do
    assert_difference('BaseGraph.count') do
      post base_graphs_url, params: { base_graph: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show base_graph" do
    get base_graph_url(@base_graph), as: :json
    assert_response :success
  end

  test "should update base_graph" do
    patch base_graph_url(@base_graph), params: { base_graph: {  } }, as: :json
    assert_response 200
  end

  test "should destroy base_graph" do
    assert_difference('BaseGraph.count', -1) do
      delete base_graph_url(@base_graph), as: :json
    end

    assert_response 204
  end
end
