class InitiativeParticipatingGroupsController < ApplicationController
  before_action :set_initiative_participating_group, only: [:show, :update, :destroy]

  # GET /initiative_participating_groups
  def index
    @initiative_participating_groups = InitiativeParticipatingGroup.all

    render json: @initiative_participating_groups
  end

  # GET /initiative_participating_groups/1
  def show
    render json: @initiative_participating_group
  end

  # POST /initiative_participating_groups
  def create
    @initiative_participating_group = InitiativeParticipatingGroup.new(initiative_participating_group_params)

    if @initiative_participating_group.save
      render json: @initiative_participating_group, status: :created, location: @initiative_participating_group
    else
      render json: @initiative_participating_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_participating_groups/1
  def update
    if @initiative_participating_group.update(initiative_participating_group_params)
      render json: @initiative_participating_group
    else
      render json: @initiative_participating_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_participating_groups/1
  def destroy
    @initiative_participating_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_participating_group
      @initiative_participating_group = InitiativeParticipatingGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_participating_group_params
      params.fetch(:initiative_participating_group, {})
    end
end
