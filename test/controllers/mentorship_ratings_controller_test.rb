require 'test_helper'

class MentorshipRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentorship_rating = mentorship_ratings(:one)
  end

  test "should get index" do
    get mentorship_ratings_url, as: :json
    assert_response :success
  end

  test "should create mentorship_rating" do
    assert_difference('MentorshipRating.count') do
      post mentorship_ratings_url, params: { mentorship_rating: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentorship_rating" do
    get mentorship_rating_url(@mentorship_rating), as: :json
    assert_response :success
  end

  test "should update mentorship_rating" do
    patch mentorship_rating_url(@mentorship_rating), params: { mentorship_rating: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentorship_rating" do
    assert_difference('MentorshipRating.count', -1) do
      delete mentorship_rating_url(@mentorship_rating), as: :json
    end

    assert_response 204
  end
end
