require 'test_helper'

class SharedMetricsDashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared_metrics_dashboard = shared_metrics_dashboards(:one)
  end

  test "should get index" do
    get shared_metrics_dashboards_url, as: :json
    assert_response :success
  end

  test "should create shared_metrics_dashboard" do
    assert_difference('SharedMetricsDashboard.count') do
      post shared_metrics_dashboards_url, params: { shared_metrics_dashboard: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show shared_metrics_dashboard" do
    get shared_metrics_dashboard_url(@shared_metrics_dashboard), as: :json
    assert_response :success
  end

  test "should update shared_metrics_dashboard" do
    patch shared_metrics_dashboard_url(@shared_metrics_dashboard), params: { shared_metrics_dashboard: {  } }, as: :json
    assert_response 200
  end

  test "should destroy shared_metrics_dashboard" do
    assert_difference('SharedMetricsDashboard.count', -1) do
      delete shared_metrics_dashboard_url(@shared_metrics_dashboard), as: :json
    end

    assert_response 204
  end
end
