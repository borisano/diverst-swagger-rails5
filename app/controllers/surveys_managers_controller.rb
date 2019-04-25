class SurveysManagersController < ApplicationController
  before_action :set_surveys_manager, only: [:show, :update, :destroy]

  # GET /surveys_managers
  def index
    @surveys_managers = SurveysManager.all

    render json: @surveys_managers
  end

  # GET /surveys_managers/1
  def show
    render json: @surveys_manager
  end

  # POST /surveys_managers
  def create
    @surveys_manager = SurveysManager.new(surveys_manager_params)

    if @surveys_manager.save
      render json: @surveys_manager, status: :created, location: @surveys_manager
    else
      render json: @surveys_manager.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /surveys_managers/1
  def update
    if @surveys_manager.update(surveys_manager_params)
      render json: @surveys_manager
    else
      render json: @surveys_manager.errors, status: :unprocessable_entity
    end
  end

  # DELETE /surveys_managers/1
  def destroy
    @surveys_manager.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surveys_manager
      @surveys_manager = SurveysManager.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surveys_manager_params
      params.fetch(:surveys_manager, {})
    end
end
