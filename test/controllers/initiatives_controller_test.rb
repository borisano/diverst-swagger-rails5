require 'test_helper'

class InitiativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative = initiatives(:one)
  end

  test "should get index" do
    get initiatives_url, as: :json
    assert_response :success
  end

  test "should create initiative" do
    assert_difference('Initiative.count') do
      post initiatives_url, params: { initiative: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative" do
    get initiative_url(@initiative), as: :json
    assert_response :success
  end

  test "should update initiative" do
    patch initiative_url(@initiative), params: { initiative: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative" do
    assert_difference('Initiative.count', -1) do
      delete initiative_url(@initiative), as: :json
    end

    assert_response 204
  end
end
