require 'test_helper'

class PollsSegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polls_segment = polls_segments(:one)
  end

  test "should get index" do
    get polls_segments_url, as: :json
    assert_response :success
  end

  test "should create polls_segment" do
    assert_difference('PollsSegment.count') do
      post polls_segments_url, params: { polls_segment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show polls_segment" do
    get polls_segment_url(@polls_segment), as: :json
    assert_response :success
  end

  test "should update polls_segment" do
    patch polls_segment_url(@polls_segment), params: { polls_segment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy polls_segment" do
    assert_difference('PollsSegment.count', -1) do
      delete polls_segment_url(@polls_segment), as: :json
    end

    assert_response 204
  end
end
