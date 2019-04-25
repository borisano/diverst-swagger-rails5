require 'test_helper'

class CampaignInvitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_invitation = campaign_invitations(:one)
  end

  test "should get index" do
    get campaign_invitations_url, as: :json
    assert_response :success
  end

  test "should create campaign_invitation" do
    assert_difference('CampaignInvitation.count') do
      post campaign_invitations_url, params: { campaign_invitation: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show campaign_invitation" do
    get campaign_invitation_url(@campaign_invitation), as: :json
    assert_response :success
  end

  test "should update campaign_invitation" do
    patch campaign_invitation_url(@campaign_invitation), params: { campaign_invitation: {  } }, as: :json
    assert_response 200
  end

  test "should destroy campaign_invitation" do
    assert_difference('CampaignInvitation.count', -1) do
      delete campaign_invitation_url(@campaign_invitation), as: :json
    end

    assert_response 204
  end
end
