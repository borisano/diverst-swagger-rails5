class NewsFeedsController < ApplicationController
  before_action :set_news_feed, only: [:show, :update, :destroy]

  # GET /news_feeds
  def index
    @news_feeds = NewsFeed.all

    render json: @news_feeds
  end

  # GET /news_feeds/1
  def show
    render json: @news_feed
  end

  # POST /news_feeds
  def create
    @news_feed = NewsFeed.new(news_feed_params)

    if @news_feed.save
      render json: @news_feed, status: :created, location: @news_feed
    else
      render json: @news_feed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_feeds/1
  def update
    if @news_feed.update(news_feed_params)
      render json: @news_feed
    else
      render json: @news_feed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_feeds/1
  def destroy
    @news_feed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_feed
      @news_feed = NewsFeed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_feed_params
      params.fetch(:news_feed, {})
    end
end
