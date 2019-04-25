require 'test_helper'

class GroupsPollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groups_poll = groups_polls(:one)
  end

  test "should get index" do
    get groups_polls_url, as: :json
    assert_response :success
  end

  test "should create groups_poll" do
    assert_difference('GroupsPoll.count') do
      post groups_polls_url, params: { groups_poll: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show groups_poll" do
    get groups_poll_url(@groups_poll), as: :json
    assert_response :success
  end

  test "should update groups_poll" do
    patch groups_poll_url(@groups_poll), params: { groups_poll: {  } }, as: :json
    assert_response 200
  end

  test "should destroy groups_poll" do
    assert_difference('GroupsPoll.count', -1) do
      delete groups_poll_url(@groups_poll), as: :json
    end

    assert_response 204
  end
end
