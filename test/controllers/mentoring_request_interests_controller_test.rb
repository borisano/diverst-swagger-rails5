require 'test_helper'

class MentoringRequestInterestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentoring_request_interest = mentoring_request_interests(:one)
  end

  test "should get index" do
    get mentoring_request_interests_url, as: :json
    assert_response :success
  end

  test "should create mentoring_request_interest" do
    assert_difference('MentoringRequestInterest.count') do
      post mentoring_request_interests_url, params: { mentoring_request_interest: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentoring_request_interest" do
    get mentoring_request_interest_url(@mentoring_request_interest), as: :json
    assert_response :success
  end

  test "should update mentoring_request_interest" do
    patch mentoring_request_interest_url(@mentoring_request_interest), params: { mentoring_request_interest: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentoring_request_interest" do
    assert_difference('MentoringRequestInterest.count', -1) do
      delete mentoring_request_interest_url(@mentoring_request_interest), as: :json
    end

    assert_response 204
  end
end
