class NewsFeedLinksController < ApplicationController
  before_action :set_news_feed_link, only: [:show, :update, :destroy]

  # GET /news_feed_links
  def index
    @news_feed_links = NewsFeedLink.all

    render json: @news_feed_links
  end

  # GET /news_feed_links/1
  def show
    render json: @news_feed_link
  end

  # POST /news_feed_links
  def create
    @news_feed_link = NewsFeedLink.new(news_feed_link_params)

    if @news_feed_link.save
      render json: @news_feed_link, status: :created, location: @news_feed_link
    else
      render json: @news_feed_link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_feed_links/1
  def update
    if @news_feed_link.update(news_feed_link_params)
      render json: @news_feed_link
    else
      render json: @news_feed_link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_feed_links/1
  def destroy
    @news_feed_link.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_feed_link
      @news_feed_link = NewsFeedLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_feed_link_params
      params.fetch(:news_feed_link, {})
    end
end
