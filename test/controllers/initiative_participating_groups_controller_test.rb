require 'test_helper'

class InitiativeParticipatingGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_participating_group = initiative_participating_groups(:one)
  end

  test "should get index" do
    get initiative_participating_groups_url, as: :json
    assert_response :success
  end

  test "should create initiative_participating_group" do
    assert_difference('InitiativeParticipatingGroup.count') do
      post initiative_participating_groups_url, params: { initiative_participating_group: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_participating_group" do
    get initiative_participating_group_url(@initiative_participating_group), as: :json
    assert_response :success
  end

  test "should update initiative_participating_group" do
    patch initiative_participating_group_url(@initiative_participating_group), params: { initiative_participating_group: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_participating_group" do
    assert_difference('InitiativeParticipatingGroup.count', -1) do
      delete initiative_participating_group_url(@initiative_participating_group), as: :json
    end

    assert_response 204
  end
end
