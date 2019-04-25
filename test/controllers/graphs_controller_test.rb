require 'test_helper'

class GraphsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graph = graphs(:one)
  end

  test "should get index" do
    get graphs_url, as: :json
    assert_response :success
  end

  test "should create graph" do
    assert_difference('Graph.count') do
      post graphs_url, params: { graph: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show graph" do
    get graph_url(@graph), as: :json
    assert_response :success
  end

  test "should update graph" do
    patch graph_url(@graph), params: { graph: {  } }, as: :json
    assert_response 200
  end

  test "should destroy graph" do
    assert_difference('Graph.count', -1) do
      delete graph_url(@graph), as: :json
    end

    assert_response 204
  end
end
