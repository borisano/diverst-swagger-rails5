class PollsSegmentsController < ApplicationController
  before_action :set_polls_segment, only: [:show, :update, :destroy]

  # GET /polls_segments
  def index
    @polls_segments = PollsSegment.all

    render json: @polls_segments
  end

  # GET /polls_segments/1
  def show
    render json: @polls_segment
  end

  # POST /polls_segments
  def create
    @polls_segment = PollsSegment.new(polls_segment_params)

    if @polls_segment.save
      render json: @polls_segment, status: :created, location: @polls_segment
    else
      render json: @polls_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /polls_segments/1
  def update
    if @polls_segment.update(polls_segment_params)
      render json: @polls_segment
    else
      render json: @polls_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /polls_segments/1
  def destroy
    @polls_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polls_segment
      @polls_segment = PollsSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def polls_segment_params
      params.fetch(:polls_segment, {})
    end
end
