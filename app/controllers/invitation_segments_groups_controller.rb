class InvitationSegmentsGroupsController < ApplicationController
  before_action :set_invitation_segments_group, only: [:show, :update, :destroy]

  # GET /invitation_segments_groups
  def index
    @invitation_segments_groups = InvitationSegmentsGroup.all

    render json: @invitation_segments_groups
  end

  # GET /invitation_segments_groups/1
  def show
    render json: @invitation_segments_group
  end

  # POST /invitation_segments_groups
  def create
    @invitation_segments_group = InvitationSegmentsGroup.new(invitation_segments_group_params)

    if @invitation_segments_group.save
      render json: @invitation_segments_group, status: :created, location: @invitation_segments_group
    else
      render json: @invitation_segments_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invitation_segments_groups/1
  def update
    if @invitation_segments_group.update(invitation_segments_group_params)
      render json: @invitation_segments_group
    else
      render json: @invitation_segments_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invitation_segments_groups/1
  def destroy
    @invitation_segments_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitation_segments_group
      @invitation_segments_group = InvitationSegmentsGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def invitation_segments_group_params
      params.fetch(:invitation_segments_group, {})
    end
end
