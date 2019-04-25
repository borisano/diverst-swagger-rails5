class CampaignsSegmentsController < ApplicationController
  before_action :set_campaigns_segment, only: [:show, :update, :destroy]

  # GET /campaigns_segments
  def index
    @campaigns_segments = CampaignsSegment.all

    render json: @campaigns_segments
  end

  # GET /campaigns_segments/1
  def show
    render json: @campaigns_segment
  end

  # POST /campaigns_segments
  def create
    @campaigns_segment = CampaignsSegment.new(campaigns_segment_params)

    if @campaigns_segment.save
      render json: @campaigns_segment, status: :created, location: @campaigns_segment
    else
      render json: @campaigns_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaigns_segments/1
  def update
    if @campaigns_segment.update(campaigns_segment_params)
      render json: @campaigns_segment
    else
      render json: @campaigns_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaigns_segments/1
  def destroy
    @campaigns_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaigns_segment
      @campaigns_segment = CampaignsSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campaigns_segment_params
      params.fetch(:campaigns_segment, {})
    end
end
