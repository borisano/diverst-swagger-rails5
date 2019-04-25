require 'test_helper'

class MentorshipSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentorship_session = mentorship_sessions(:one)
  end

  test "should get index" do
    get mentorship_sessions_url, as: :json
    assert_response :success
  end

  test "should create mentorship_session" do
    assert_difference('MentorshipSession.count') do
      post mentorship_sessions_url, params: { mentorship_session: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentorship_session" do
    get mentorship_session_url(@mentorship_session), as: :json
    assert_response :success
  end

  test "should update mentorship_session" do
    patch mentorship_session_url(@mentorship_session), params: { mentorship_session: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentorship_session" do
    assert_difference('MentorshipSession.count', -1) do
      delete mentorship_session_url(@mentorship_session), as: :json
    end

    assert_response 204
  end
end
