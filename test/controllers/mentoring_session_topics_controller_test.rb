require 'test_helper'

class MentoringSessionTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentoring_session_topic = mentoring_session_topics(:one)
  end

  test "should get index" do
    get mentoring_session_topics_url, as: :json
    assert_response :success
  end

  test "should create mentoring_session_topic" do
    assert_difference('MentoringSessionTopic.count') do
      post mentoring_session_topics_url, params: { mentoring_session_topic: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentoring_session_topic" do
    get mentoring_session_topic_url(@mentoring_session_topic), as: :json
    assert_response :success
  end

  test "should update mentoring_session_topic" do
    patch mentoring_session_topic_url(@mentoring_session_topic), params: { mentoring_session_topic: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentoring_session_topic" do
    assert_difference('MentoringSessionTopic.count', -1) do
      delete mentoring_session_topic_url(@mentoring_session_topic), as: :json
    end

    assert_response 204
  end
end
