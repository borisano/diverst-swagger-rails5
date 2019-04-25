require 'test_helper'

class TopicFeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic_feedback = topic_feedbacks(:one)
  end

  test "should get index" do
    get topic_feedbacks_url, as: :json
    assert_response :success
  end

  test "should create topic_feedback" do
    assert_difference('TopicFeedback.count') do
      post topic_feedbacks_url, params: { topic_feedback: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show topic_feedback" do
    get topic_feedback_url(@topic_feedback), as: :json
    assert_response :success
  end

  test "should update topic_feedback" do
    patch topic_feedback_url(@topic_feedback), params: { topic_feedback: {  } }, as: :json
    assert_response 200
  end

  test "should destroy topic_feedback" do
    assert_difference('TopicFeedback.count', -1) do
      delete topic_feedback_url(@topic_feedback), as: :json
    end

    assert_response 204
  end
end
