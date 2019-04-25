class SharedNewsFeedLinksController < ApplicationController
  before_action :set_shared_news_feed_link, only: [:show, :update, :destroy]

  # GET /shared_news_feed_links
  def index
    @shared_news_feed_links = SharedNewsFeedLink.all

    render json: @shared_news_feed_links
  end

  # GET /shared_news_feed_links/1
  def show
    render json: @shared_news_feed_link
  end

  # POST /shared_news_feed_links
  def create
    @shared_news_feed_link = SharedNewsFeedLink.new(shared_news_feed_link_params)

    if @shared_news_feed_link.save
      render json: @shared_news_feed_link, status: :created, location: @shared_news_feed_link
    else
      render json: @shared_news_feed_link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shared_news_feed_links/1
  def update
    if @shared_news_feed_link.update(shared_news_feed_link_params)
      render json: @shared_news_feed_link
    else
      render json: @shared_news_feed_link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shared_news_feed_links/1
  def destroy
    @shared_news_feed_link.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_news_feed_link
      @shared_news_feed_link = SharedNewsFeedLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shared_news_feed_link_params
      params.fetch(:shared_news_feed_link, {})
    end
end
