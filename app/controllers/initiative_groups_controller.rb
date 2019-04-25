class InitiativeGroupsController < ApplicationController
  before_action :set_initiative_group, only: [:show, :update, :destroy]

  # GET /initiative_groups
  def index
    @initiative_groups = InitiativeGroup.all

    render json: @initiative_groups
  end

  # GET /initiative_groups/1
  def show
    render json: @initiative_group
  end

  # POST /initiative_groups
  def create
    @initiative_group = InitiativeGroup.new(initiative_group_params)

    if @initiative_group.save
      render json: @initiative_group, status: :created, location: @initiative_group
    else
      render json: @initiative_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_groups/1
  def update
    if @initiative_group.update(initiative_group_params)
      render json: @initiative_group
    else
      render json: @initiative_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_groups/1
  def destroy
    @initiative_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_group
      @initiative_group = InitiativeGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_group_params
      params.fetch(:initiative_group, {})
    end
end
