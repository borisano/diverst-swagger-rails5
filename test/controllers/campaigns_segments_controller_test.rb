require 'test_helper'

class CampaignsSegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaigns_segment = campaigns_segments(:one)
  end

  test "should get index" do
    get campaigns_segments_url, as: :json
    assert_response :success
  end

  test "should create campaigns_segment" do
    assert_difference('CampaignsSegment.count') do
      post campaigns_segments_url, params: { campaigns_segment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show campaigns_segment" do
    get campaigns_segment_url(@campaigns_segment), as: :json
    assert_response :success
  end

  test "should update campaigns_segment" do
    patch campaigns_segment_url(@campaigns_segment), params: { campaigns_segment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy campaigns_segment" do
    assert_difference('CampaignsSegment.count', -1) do
      delete campaigns_segment_url(@campaigns_segment), as: :json
    end

    assert_response 204
  end
end
