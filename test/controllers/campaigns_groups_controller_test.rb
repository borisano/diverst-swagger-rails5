require 'test_helper'

class CampaignsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaigns_group = campaigns_groups(:one)
  end

  test "should get index" do
    get campaigns_groups_url, as: :json
    assert_response :success
  end

  test "should create campaigns_group" do
    assert_difference('CampaignsGroup.count') do
      post campaigns_groups_url, params: { campaigns_group: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show campaigns_group" do
    get campaigns_group_url(@campaigns_group), as: :json
    assert_response :success
  end

  test "should update campaigns_group" do
    patch campaigns_group_url(@campaigns_group), params: { campaigns_group: {  } }, as: :json
    assert_response 200
  end

  test "should destroy campaigns_group" do
    assert_difference('CampaignsGroup.count', -1) do
      delete campaigns_group_url(@campaigns_group), as: :json
    end

    assert_response 204
  end
end
