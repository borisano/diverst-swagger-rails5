require 'test_helper'

class MentoringSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentoring_session = mentoring_sessions(:one)
  end

  test "should get index" do
    get mentoring_sessions_url, as: :json
    assert_response :success
  end

  test "should create mentoring_session" do
    assert_difference('MentoringSession.count') do
      post mentoring_sessions_url, params: { mentoring_session: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentoring_session" do
    get mentoring_session_url(@mentoring_session), as: :json
    assert_response :success
  end

  test "should update mentoring_session" do
    patch mentoring_session_url(@mentoring_session), params: { mentoring_session: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentoring_session" do
    assert_difference('MentoringSession.count', -1) do
      delete mentoring_session_url(@mentoring_session), as: :json
    end

    assert_response 204
  end
end
