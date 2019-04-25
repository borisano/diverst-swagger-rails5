require 'test_helper'

class UsersSegmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_segment = users_segments(:one)
  end

  test "should get index" do
    get users_segments_url, as: :json
    assert_response :success
  end

  test "should create users_segment" do
    assert_difference('UsersSegment.count') do
      post users_segments_url, params: { users_segment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show users_segment" do
    get users_segment_url(@users_segment), as: :json
    assert_response :success
  end

  test "should update users_segment" do
    patch users_segment_url(@users_segment), params: { users_segment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy users_segment" do
    assert_difference('UsersSegment.count', -1) do
      delete users_segment_url(@users_segment), as: :json
    end

    assert_response 204
  end
end
