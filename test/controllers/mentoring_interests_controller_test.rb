require 'test_helper'

class MentoringInterestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentoring_interest = mentoring_interests(:one)
  end

  test "should get index" do
    get mentoring_interests_url, as: :json
    assert_response :success
  end

  test "should create mentoring_interest" do
    assert_difference('MentoringInterest.count') do
      post mentoring_interests_url, params: { mentoring_interest: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentoring_interest" do
    get mentoring_interest_url(@mentoring_interest), as: :json
    assert_response :success
  end

  test "should update mentoring_interest" do
    patch mentoring_interest_url(@mentoring_interest), params: { mentoring_interest: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentoring_interest" do
    assert_difference('MentoringInterest.count', -1) do
      delete mentoring_interest_url(@mentoring_interest), as: :json
    end

    assert_response 204
  end
end
