require 'test_helper'

class MentorshipAvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentorship_availability = mentorship_availabilities(:one)
  end

  test "should get index" do
    get mentorship_availabilities_url, as: :json
    assert_response :success
  end

  test "should create mentorship_availability" do
    assert_difference('MentorshipAvailability.count') do
      post mentorship_availabilities_url, params: { mentorship_availability: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentorship_availability" do
    get mentorship_availability_url(@mentorship_availability), as: :json
    assert_response :success
  end

  test "should update mentorship_availability" do
    patch mentorship_availability_url(@mentorship_availability), params: { mentorship_availability: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentorship_availability" do
    assert_difference('MentorshipAvailability.count', -1) do
      delete mentorship_availability_url(@mentorship_availability), as: :json
    end

    assert_response 204
  end
end
