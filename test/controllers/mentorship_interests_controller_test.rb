require 'test_helper'

class MentorshipInterestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentorship_interest = mentorship_interests(:one)
  end

  test "should get index" do
    get mentorship_interests_url, as: :json
    assert_response :success
  end

  test "should create mentorship_interest" do
    assert_difference('MentorshipInterest.count') do
      post mentorship_interests_url, params: { mentorship_interest: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentorship_interest" do
    get mentorship_interest_url(@mentorship_interest), as: :json
    assert_response :success
  end

  test "should update mentorship_interest" do
    patch mentorship_interest_url(@mentorship_interest), params: { mentorship_interest: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentorship_interest" do
    assert_difference('MentorshipInterest.count', -1) do
      delete mentorship_interest_url(@mentorship_interest), as: :json
    end

    assert_response 204
  end
end
