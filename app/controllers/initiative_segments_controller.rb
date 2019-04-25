class InitiativeSegmentsController < ApplicationController
  before_action :set_initiative_segment, only: [:show, :update, :destroy]

  # GET /initiative_segments
  def index
    @initiative_segments = InitiativeSegment.all

    render json: @initiative_segments
  end

  # GET /initiative_segments/1
  def show
    render json: @initiative_segment
  end

  # POST /initiative_segments
  def create
    @initiative_segment = InitiativeSegment.new(initiative_segment_params)

    if @initiative_segment.save
      render json: @initiative_segment, status: :created, location: @initiative_segment
    else
      render json: @initiative_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_segments/1
  def update
    if @initiative_segment.update(initiative_segment_params)
      render json: @initiative_segment
    else
      render json: @initiative_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_segments/1
  def destroy
    @initiative_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_segment
      @initiative_segment = InitiativeSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_segment_params
      params.fetch(:initiative_segment, {})
    end
end
