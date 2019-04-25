class CampaignInvitationsController < ApplicationController
  before_action :set_campaign_invitation, only: [:show, :update, :destroy]

  # GET /campaign_invitations
  def index
    @campaign_invitations = CampaignInvitation.all

    render json: @campaign_invitations
  end

  # GET /campaign_invitations/1
  def show
    render json: @campaign_invitation
  end

  # POST /campaign_invitations
  def create
    @campaign_invitation = CampaignInvitation.new(campaign_invitation_params)

    if @campaign_invitation.save
      render json: @campaign_invitation, status: :created, location: @campaign_invitation
    else
      render json: @campaign_invitation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaign_invitations/1
  def update
    if @campaign_invitation.update(campaign_invitation_params)
      render json: @campaign_invitation
    else
      render json: @campaign_invitation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaign_invitations/1
  def destroy
    @campaign_invitation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_invitation
      @campaign_invitation = CampaignInvitation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campaign_invitation_params
      params.fetch(:campaign_invitation, {})
    end
end
