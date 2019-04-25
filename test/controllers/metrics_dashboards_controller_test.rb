require 'test_helper'

class MetricsDashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metrics_dashboard = metrics_dashboards(:one)
  end

  test "should get index" do
    get metrics_dashboards_url, as: :json
    assert_response :success
  end

  test "should create metrics_dashboard" do
    assert_difference('MetricsDashboard.count') do
      post metrics_dashboards_url, params: { metrics_dashboard: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show metrics_dashboard" do
    get metrics_dashboard_url(@metrics_dashboard), as: :json
    assert_response :success
  end

  test "should update metrics_dashboard" do
    patch metrics_dashboard_url(@metrics_dashboard), params: { metrics_dashboard: {  } }, as: :json
    assert_response 200
  end

  test "should destroy metrics_dashboard" do
    assert_difference('MetricsDashboard.count', -1) do
      delete metrics_dashboard_url(@metrics_dashboard), as: :json
    end

    assert_response 204
  end
end
