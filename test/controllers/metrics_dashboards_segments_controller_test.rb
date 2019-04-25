require 'test_helper'

class MetricsDashboardsSegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metrics_dashboards_segment = metrics_dashboards_segments(:one)
  end

  test "should get index" do
    get metrics_dashboards_segments_url, as: :json
    assert_response :success
  end

  test "should create metrics_dashboards_segment" do
    assert_difference('MetricsDashboardsSegment.count') do
      post metrics_dashboards_segments_url, params: { metrics_dashboards_segment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show metrics_dashboards_segment" do
    get metrics_dashboards_segment_url(@metrics_dashboards_segment), as: :json
    assert_response :success
  end

  test "should update metrics_dashboards_segment" do
    patch metrics_dashboards_segment_url(@metrics_dashboards_segment), params: { metrics_dashboards_segment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy metrics_dashboards_segment" do
    assert_difference('MetricsDashboardsSegment.count', -1) do
      delete metrics_dashboards_segment_url(@metrics_dashboards_segment), as: :json
    end

    assert_response 204
  end
end
