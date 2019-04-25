require 'test_helper'

class InitiativeSegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_segment = initiative_segments(:one)
  end

  test "should get index" do
    get initiative_segments_url, as: :json
    assert_response :success
  end

  test "should create initiative_segment" do
    assert_difference('InitiativeSegment.count') do
      post initiative_segments_url, params: { initiative_segment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_segment" do
    get initiative_segment_url(@initiative_segment), as: :json
    assert_response :success
  end

  test "should update initiative_segment" do
    patch initiative_segment_url(@initiative_segment), params: { initiative_segment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_segment" do
    assert_difference('InitiativeSegment.count', -1) do
      delete initiative_segment_url(@initiative_segment), as: :json
    end

    assert_response 204
  end
end
