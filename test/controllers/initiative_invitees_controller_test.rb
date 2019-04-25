require 'test_helper'

class InitiativeInviteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_invitee = initiative_invitees(:one)
  end

  test "should get index" do
    get initiative_invitees_url, as: :json
    assert_response :success
  end

  test "should create initiative_invitee" do
    assert_difference('InitiativeInvitee.count') do
      post initiative_invitees_url, params: { initiative_invitee: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_invitee" do
    get initiative_invitee_url(@initiative_invitee), as: :json
    assert_response :success
  end

  test "should update initiative_invitee" do
    patch initiative_invitee_url(@initiative_invitee), params: { initiative_invitee: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_invitee" do
    assert_difference('InitiativeInvitee.count', -1) do
      delete initiative_invitee_url(@initiative_invitee), as: :json
    end

    assert_response 204
  end
end
