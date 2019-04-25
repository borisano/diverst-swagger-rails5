require 'test_helper'

class CampaignsManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaigns_manager = campaigns_managers(:one)
  end

  test "should get index" do
    get campaigns_managers_url, as: :json
    assert_response :success
  end

  test "should create campaigns_manager" do
    assert_difference('CampaignsManager.count') do
      post campaigns_managers_url, params: { campaigns_manager: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show campaigns_manager" do
    get campaigns_manager_url(@campaigns_manager), as: :json
    assert_response :success
  end

  test "should update campaigns_manager" do
    patch campaigns_manager_url(@campaigns_manager), params: { campaigns_manager: {  } }, as: :json
    assert_response 200
  end

  test "should destroy campaigns_manager" do
    assert_difference('CampaignsManager.count', -1) do
      delete campaigns_manager_url(@campaigns_manager), as: :json
    end

    assert_response 204
  end
end
