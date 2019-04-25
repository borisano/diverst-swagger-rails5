require 'test_helper'

class AnswerUpvotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_upvote = answer_upvotes(:one)
  end

  test "should get index" do
    get answer_upvotes_url, as: :json
    assert_response :success
  end

  test "should create answer_upvote" do
    assert_difference('AnswerUpvote.count') do
      post answer_upvotes_url, params: { answer_upvote: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show answer_upvote" do
    get answer_upvote_url(@answer_upvote), as: :json
    assert_response :success
  end

  test "should update answer_upvote" do
    patch answer_upvote_url(@answer_upvote), params: { answer_upvote: {  } }, as: :json
    assert_response 200
  end

  test "should destroy answer_upvote" do
    assert_difference('AnswerUpvote.count', -1) do
      delete answer_upvote_url(@answer_upvote), as: :json
    end

    assert_response 204
  end
end
