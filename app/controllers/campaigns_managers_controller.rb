class CampaignsManagersController < ApplicationController
  before_action :set_campaigns_manager, only: [:show, :update, :destroy]

  # GET /campaigns_managers
  def index
    @campaigns_managers = CampaignsManager.all

    render json: @campaigns_managers
  end

  # GET /campaigns_managers/1
  def show
    render json: @campaigns_manager
  end

  # POST /campaigns_managers
  def create
    @campaigns_manager = CampaignsManager.new(campaigns_manager_params)

    if @campaigns_manager.save
      render json: @campaigns_manager, status: :created, location: @campaigns_manager
    else
      render json: @campaigns_manager.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaigns_managers/1
  def update
    if @campaigns_manager.update(campaigns_manager_params)
      render json: @campaigns_manager
    else
      render json: @campaigns_manager.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaigns_managers/1
  def destroy
    @campaigns_manager.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaigns_manager
      @campaigns_manager = CampaignsManager.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campaigns_manager_params
      params.fetch(:campaigns_manager, {})
    end
end
