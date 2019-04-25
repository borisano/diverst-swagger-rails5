class MetricsDashboardsController < ApplicationController
  before_action :set_metrics_dashboard, only: [:show, :update, :destroy]

  # GET /metrics_dashboards
  def index
    @metrics_dashboards = MetricsDashboard.all

    render json: @metrics_dashboards
  end

  # GET /metrics_dashboards/1
  def show
    render json: @metrics_dashboard
  end

  # POST /metrics_dashboards
  def create
    @metrics_dashboard = MetricsDashboard.new(metrics_dashboard_params)

    if @metrics_dashboard.save
      render json: @metrics_dashboard, status: :created, location: @metrics_dashboard
    else
      render json: @metrics_dashboard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /metrics_dashboards/1
  def update
    if @metrics_dashboard.update(metrics_dashboard_params)
      render json: @metrics_dashboard
    else
      render json: @metrics_dashboard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /metrics_dashboards/1
  def destroy
    @metrics_dashboard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metrics_dashboard
      @metrics_dashboard = MetricsDashboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def metrics_dashboard_params
      params.fetch(:metrics_dashboard, {})
    end
end
