require 'test_helper'

class SurveysManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surveys_manager = surveys_managers(:one)
  end

  test "should get index" do
    get surveys_managers_url, as: :json
    assert_response :success
  end

  test "should create surveys_manager" do
    assert_difference('SurveysManager.count') do
      post surveys_managers_url, params: { surveys_manager: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show surveys_manager" do
    get surveys_manager_url(@surveys_manager), as: :json
    assert_response :success
  end

  test "should update surveys_manager" do
    patch surveys_manager_url(@surveys_manager), params: { surveys_manager: {  } }, as: :json
    assert_response 200
  end

  test "should destroy surveys_manager" do
    assert_difference('SurveysManager.count', -1) do
      delete surveys_manager_url(@surveys_manager), as: :json
    end

    assert_response 204
  end
end
