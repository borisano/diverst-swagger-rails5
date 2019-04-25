require 'test_helper'

class PollResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poll_response = poll_responses(:one)
  end

  test "should get index" do
    get poll_responses_url, as: :json
    assert_response :success
  end

  test "should create poll_response" do
    assert_difference('PollResponse.count') do
      post poll_responses_url, params: { poll_response: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show poll_response" do
    get poll_response_url(@poll_response), as: :json
    assert_response :success
  end

  test "should update poll_response" do
    patch poll_response_url(@poll_response), params: { poll_response: {  } }, as: :json
    assert_response 200
  end

  test "should destroy poll_response" do
    assert_difference('PollResponse.count', -1) do
      delete poll_response_url(@poll_response), as: :json
    end

    assert_response 204
  end
end
