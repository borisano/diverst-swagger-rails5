require 'test_helper'

class MentoringSessionCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentoring_session_comment = mentoring_session_comments(:one)
  end

  test "should get index" do
    get mentoring_session_comments_url, as: :json
    assert_response :success
  end

  test "should create mentoring_session_comment" do
    assert_difference('MentoringSessionComment.count') do
      post mentoring_session_comments_url, params: { mentoring_session_comment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentoring_session_comment" do
    get mentoring_session_comment_url(@mentoring_session_comment), as: :json
    assert_response :success
  end

  test "should update mentoring_session_comment" do
    patch mentoring_session_comment_url(@mentoring_session_comment), params: { mentoring_session_comment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentoring_session_comment" do
    assert_difference('MentoringSessionComment.count', -1) do
      delete mentoring_session_comment_url(@mentoring_session_comment), as: :json
    end

    assert_response 204
  end
end
