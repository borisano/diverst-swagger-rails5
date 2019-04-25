class SharedMetricsDashboardsController < ApplicationController
  before_action :set_shared_metrics_dashboard, only: [:show, :update, :destroy]

  # GET /shared_metrics_dashboards
  def index
    @shared_metrics_dashboards = SharedMetricsDashboard.all

    render json: @shared_metrics_dashboards
  end

  # GET /shared_metrics_dashboards/1
  def show
    render json: @shared_metrics_dashboard
  end

  # POST /shared_metrics_dashboards
  def create
    @shared_metrics_dashboard = SharedMetricsDashboard.new(shared_metrics_dashboard_params)

    if @shared_metrics_dashboard.save
      render json: @shared_metrics_dashboard, status: :created, location: @shared_metrics_dashboard
    else
      render json: @shared_metrics_dashboard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shared_metrics_dashboards/1
  def update
    if @shared_metrics_dashboard.update(shared_metrics_dashboard_params)
      render json: @shared_metrics_dashboard
    else
      render json: @shared_metrics_dashboard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shared_metrics_dashboards/1
  def destroy
    @shared_metrics_dashboard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_metrics_dashboard
      @shared_metrics_dashboard = SharedMetricsDashboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shared_metrics_dashboard_params
      params.fetch(:shared_metrics_dashboard, {})
    end
end
