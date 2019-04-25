require 'test_helper'

class ConcernsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concern = concerns(:one)
  end

  test "should get index" do
    get concerns_url, as: :json
    assert_response :success
  end

  test "should create concern" do
    assert_difference('Concern.count') do
      post concerns_url, params: { concern: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show concern" do
    get concern_url(@concern), as: :json
    assert_response :success
  end

  test "should update concern" do
    patch concern_url(@concern), params: { concern: {  } }, as: :json
    assert_response 200
  end

  test "should destroy concern" do
    assert_difference('Concern.count', -1) do
      delete concern_url(@concern), as: :json
    end

    assert_response 204
  end
end
