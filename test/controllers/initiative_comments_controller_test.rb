require 'test_helper'

class InitiativeCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_comment = initiative_comments(:one)
  end

  test "should get index" do
    get initiative_comments_url, as: :json
    assert_response :success
  end

  test "should create initiative_comment" do
    assert_difference('InitiativeComment.count') do
      post initiative_comments_url, params: { initiative_comment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_comment" do
    get initiative_comment_url(@initiative_comment), as: :json
    assert_response :success
  end

  test "should update initiative_comment" do
    patch initiative_comment_url(@initiative_comment), params: { initiative_comment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_comment" do
    assert_difference('InitiativeComment.count', -1) do
      delete initiative_comment_url(@initiative_comment), as: :json
    end

    assert_response 204
  end
end
