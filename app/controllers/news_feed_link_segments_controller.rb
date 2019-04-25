class NewsFeedLinkSegmentsController < ApplicationController
  before_action :set_news_feed_link_segment, only: [:show, :update, :destroy]

  # GET /news_feed_link_segments
  def index
    @news_feed_link_segments = NewsFeedLinkSegment.all

    render json: @news_feed_link_segments
  end

  # GET /news_feed_link_segments/1
  def show
    render json: @news_feed_link_segment
  end

  # POST /news_feed_link_segments
  def create
    @news_feed_link_segment = NewsFeedLinkSegment.new(news_feed_link_segment_params)

    if @news_feed_link_segment.save
      render json: @news_feed_link_segment, status: :created, location: @news_feed_link_segment
    else
      render json: @news_feed_link_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_feed_link_segments/1
  def update
    if @news_feed_link_segment.update(news_feed_link_segment_params)
      render json: @news_feed_link_segment
    else
      render json: @news_feed_link_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_feed_link_segments/1
  def destroy
    @news_feed_link_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_feed_link_segment
      @news_feed_link_segment = NewsFeedLinkSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_feed_link_segment_params
      params.fetch(:news_feed_link_segment, {})
    end
end
