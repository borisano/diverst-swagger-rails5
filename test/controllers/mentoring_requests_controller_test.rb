require 'test_helper'

class MentoringRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentoring_request = mentoring_requests(:one)
  end

  test "should get index" do
    get mentoring_requests_url, as: :json
    assert_response :success
  end

  test "should create mentoring_request" do
    assert_difference('MentoringRequest.count') do
      post mentoring_requests_url, params: { mentoring_request: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentoring_request" do
    get mentoring_request_url(@mentoring_request), as: :json
    assert_response :success
  end

  test "should update mentoring_request" do
    patch mentoring_request_url(@mentoring_request), params: { mentoring_request: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentoring_request" do
    assert_difference('MentoringRequest.count', -1) do
      delete mentoring_request_url(@mentoring_request), as: :json
    end

    assert_response 204
  end
end
