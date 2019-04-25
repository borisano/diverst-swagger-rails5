class GroupsMetricsDashboardsController < ApplicationController
  before_action :set_groups_metrics_dashboard, only: [:show, :update, :destroy]

  # GET /groups_metrics_dashboards
  def index
    @groups_metrics_dashboards = GroupsMetricsDashboard.all

    render json: @groups_metrics_dashboards
  end

  # GET /groups_metrics_dashboards/1
  def show
    render json: @groups_metrics_dashboard
  end

  # POST /groups_metrics_dashboards
  def create
    @groups_metrics_dashboard = GroupsMetricsDashboard.new(groups_metrics_dashboard_params)

    if @groups_metrics_dashboard.save
      render json: @groups_metrics_dashboard, status: :created, location: @groups_metrics_dashboard
    else
      render json: @groups_metrics_dashboard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups_metrics_dashboards/1
  def update
    if @groups_metrics_dashboard.update(groups_metrics_dashboard_params)
      render json: @groups_metrics_dashboard
    else
      render json: @groups_metrics_dashboard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups_metrics_dashboards/1
  def destroy
    @groups_metrics_dashboard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groups_metrics_dashboard
      @groups_metrics_dashboard = GroupsMetricsDashboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def groups_metrics_dashboard_params
      params.fetch(:groups_metrics_dashboard, {})
    end
end
