require 'test_helper'

class AnswerCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_comment = answer_comments(:one)
  end

  test "should get index" do
    get answer_comments_url, as: :json
    assert_response :success
  end

  test "should create answer_comment" do
    assert_difference('AnswerComment.count') do
      post answer_comments_url, params: { answer_comment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show answer_comment" do
    get answer_comment_url(@answer_comment), as: :json
    assert_response :success
  end

  test "should update answer_comment" do
    patch answer_comment_url(@answer_comment), params: { answer_comment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy answer_comment" do
    assert_difference('AnswerComment.count', -1) do
      delete answer_comment_url(@answer_comment), as: :json
    end

    assert_response 204
  end
end
