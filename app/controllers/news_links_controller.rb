class NewsLinksController < ApplicationController
  before_action :set_news_link, only: [:show, :update, :destroy]

  # GET /news_links
  def index
    @news_links = NewsLink.all

    render json: @news_links
  end

  # GET /news_links/1
  def show
    render json: @news_link
  end

  # POST /news_links
  def create
    @news_link = NewsLink.new(news_link_params)

    if @news_link.save
      render json: @news_link, status: :created, location: @news_link
    else
      render json: @news_link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_links/1
  def update
    if @news_link.update(news_link_params)
      render json: @news_link
    else
      render json: @news_link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_links/1
  def destroy
    @news_link.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_link
      @news_link = NewsLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_link_params
      params.fetch(:news_link, {})
    end
end
