class SegmentsController < ApplicationController
  before_action :set_segment, only: [:show, :update, :destroy]

  # GET /segments
  def index
    @segments = Segment.all

    render json: @segments
  end

  # GET /segments/1
  def show
    render json: @segment
  end

  # POST /segments
  def create
    @segment = Segment.new(segment_params)

    if @segment.save
      render json: @segment, status: :created, location: @segment
    else
      render json: @segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /segments/1
  def update
    if @segment.update(segment_params)
      render json: @segment
    else
      render json: @segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /segments/1
  def destroy
    @segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segment
      @segment = Segment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def segment_params
      params.fetch(:segment, {})
    end
end
