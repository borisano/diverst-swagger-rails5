class MetricsDashboardsSegmentsController < ApplicationController
  before_action :set_metrics_dashboards_segment, only: [:show, :update, :destroy]

  # GET /metrics_dashboards_segments
  def index
    @metrics_dashboards_segments = MetricsDashboardsSegment.all

    render json: @metrics_dashboards_segments
  end

  # GET /metrics_dashboards_segments/1
  def show
    render json: @metrics_dashboards_segment
  end

  # POST /metrics_dashboards_segments
  def create
    @metrics_dashboards_segment = MetricsDashboardsSegment.new(metrics_dashboards_segment_params)

    if @metrics_dashboards_segment.save
      render json: @metrics_dashboards_segment, status: :created, location: @metrics_dashboards_segment
    else
      render json: @metrics_dashboards_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /metrics_dashboards_segments/1
  def update
    if @metrics_dashboards_segment.update(metrics_dashboards_segment_params)
      render json: @metrics_dashboards_segment
    else
      render json: @metrics_dashboards_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /metrics_dashboards_segments/1
  def destroy
    @metrics_dashboards_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metrics_dashboards_segment
      @metrics_dashboards_segment = MetricsDashboardsSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def metrics_dashboards_segment_params
      params.fetch(:metrics_dashboards_segment, {})
    end
end
