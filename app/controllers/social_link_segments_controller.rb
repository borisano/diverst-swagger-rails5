class SocialLinkSegmentsController < ApplicationController
  before_action :set_social_link_segment, only: [:show, :update, :destroy]

  # GET /social_link_segments
  def index
    @social_link_segments = SocialLinkSegment.all

    render json: @social_link_segments
  end

  # GET /social_link_segments/1
  def show
    render json: @social_link_segment
  end

  # POST /social_link_segments
  def create
    @social_link_segment = SocialLinkSegment.new(social_link_segment_params)

    if @social_link_segment.save
      render json: @social_link_segment, status: :created, location: @social_link_segment
    else
      render json: @social_link_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /social_link_segments/1
  def update
    if @social_link_segment.update(social_link_segment_params)
      render json: @social_link_segment
    else
      render json: @social_link_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /social_link_segments/1
  def destroy
    @social_link_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_link_segment
      @social_link_segment = SocialLinkSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_link_segment_params
      params.fetch(:social_link_segment, {})
    end
end
