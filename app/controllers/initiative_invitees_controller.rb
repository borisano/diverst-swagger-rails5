class InitiativeInviteesController < ApplicationController
  before_action :set_initiative_invitee, only: [:show, :update, :destroy]

  # GET /initiative_invitees
  def index
    @initiative_invitees = InitiativeInvitee.all

    render json: @initiative_invitees
  end

  # GET /initiative_invitees/1
  def show
    render json: @initiative_invitee
  end

  # POST /initiative_invitees
  def create
    @initiative_invitee = InitiativeInvitee.new(initiative_invitee_params)

    if @initiative_invitee.save
      render json: @initiative_invitee, status: :created, location: @initiative_invitee
    else
      render json: @initiative_invitee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_invitees/1
  def update
    if @initiative_invitee.update(initiative_invitee_params)
      render json: @initiative_invitee
    else
      render json: @initiative_invitee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_invitees/1
  def destroy
    @initiative_invitee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_invitee
      @initiative_invitee = InitiativeInvitee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_invitee_params
      params.fetch(:initiative_invitee, {})
    end
end
