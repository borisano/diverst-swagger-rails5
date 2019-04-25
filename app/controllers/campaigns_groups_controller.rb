class CampaignsGroupsController < ApplicationController
  before_action :set_campaigns_group, only: [:show, :update, :destroy]

  # GET /campaigns_groups
  def index
    @campaigns_groups = CampaignsGroup.all

    render json: @campaigns_groups
  end

  # GET /campaigns_groups/1
  def show
    render json: @campaigns_group
  end

  # POST /campaigns_groups
  def create
    @campaigns_group = CampaignsGroup.new(campaigns_group_params)

    if @campaigns_group.save
      render json: @campaigns_group, status: :created, location: @campaigns_group
    else
      render json: @campaigns_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaigns_groups/1
  def update
    if @campaigns_group.update(campaigns_group_params)
      render json: @campaigns_group
    else
      render json: @campaigns_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaigns_groups/1
  def destroy
    @campaigns_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaigns_group
      @campaigns_group = CampaignsGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campaigns_group_params
      params.fetch(:campaigns_group, {})
    end
end
