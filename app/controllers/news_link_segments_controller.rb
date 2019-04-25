class NewsLinkSegmentsController < ApplicationController
  before_action :set_news_link_segment, only: [:show, :update, :destroy]

  # GET /news_link_segments
  def index
    @news_link_segments = NewsLinkSegment.all

    render json: @news_link_segments
  end

  # GET /news_link_segments/1
  def show
    render json: @news_link_segment
  end

  # POST /news_link_segments
  def create
    @news_link_segment = NewsLinkSegment.new(news_link_segment_params)

    if @news_link_segment.save
      render json: @news_link_segment, status: :created, location: @news_link_segment
    else
      render json: @news_link_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_link_segments/1
  def update
    if @news_link_segment.update(news_link_segment_params)
      render json: @news_link_segment
    else
      render json: @news_link_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_link_segments/1
  def destroy
    @news_link_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_link_segment
      @news_link_segment = NewsLinkSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_link_segment_params
      params.fetch(:news_link_segment, {})
    end
end
