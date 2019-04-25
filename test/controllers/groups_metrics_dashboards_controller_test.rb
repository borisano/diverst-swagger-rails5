require 'test_helper'

class GroupsMetricsDashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groups_metrics_dashboard = groups_metrics_dashboards(:one)
  end

  test "should get index" do
    get groups_metrics_dashboards_url, as: :json
    assert_response :success
  end

  test "should create groups_metrics_dashboard" do
    assert_difference('GroupsMetricsDashboard.count') do
      post groups_metrics_dashboards_url, params: { groups_metrics_dashboard: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show groups_metrics_dashboard" do
    get groups_metrics_dashboard_url(@groups_metrics_dashboard), as: :json
    assert_response :success
  end

  test "should update groups_metrics_dashboard" do
    patch groups_metrics_dashboard_url(@groups_metrics_dashboard), params: { groups_metrics_dashboard: {  } }, as: :json
    assert_response 200
  end

  test "should destroy groups_metrics_dashboard" do
    assert_difference('GroupsMetricsDashboard.count', -1) do
      delete groups_metrics_dashboard_url(@groups_metrics_dashboard), as: :json
    end

    assert_response 204
  end
end
