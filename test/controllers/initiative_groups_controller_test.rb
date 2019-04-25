require 'test_helper'

class InitiativeGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_group = initiative_groups(:one)
  end

  test "should get index" do
    get initiative_groups_url, as: :json
    assert_response :success
  end

  test "should create initiative_group" do
    assert_difference('InitiativeGroup.count') do
      post initiative_groups_url, params: { initiative_group: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_group" do
    get initiative_group_url(@initiative_group), as: :json
    assert_response :success
  end

  test "should update initiative_group" do
    patch initiative_group_url(@initiative_group), params: { initiative_group: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_group" do
    assert_difference('InitiativeGroup.count', -1) do
      delete initiative_group_url(@initiative_group), as: :json
    end

    assert_response 204
  end
end
