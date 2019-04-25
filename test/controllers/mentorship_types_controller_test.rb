require 'test_helper'

class MentorshipTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentorship_type = mentorship_types(:one)
  end

  test "should get index" do
    get mentorship_types_url, as: :json
    assert_response :success
  end

  test "should create mentorship_type" do
    assert_difference('MentorshipType.count') do
      post mentorship_types_url, params: { mentorship_type: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentorship_type" do
    get mentorship_type_url(@mentorship_type), as: :json
    assert_response :success
  end

  test "should update mentorship_type" do
    patch mentorship_type_url(@mentorship_type), params: { mentorship_type: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentorship_type" do
    assert_difference('MentorshipType.count', -1) do
      delete mentorship_type_url(@mentorship_type), as: :json
    end

    assert_response 204
  end
end
