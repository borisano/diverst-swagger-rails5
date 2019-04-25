class NewsLinkCommentsController < ApplicationController
  before_action :set_news_link_comment, only: [:show, :update, :destroy]

  # GET /news_link_comments
  def index
    @news_link_comments = NewsLinkComment.all

    render json: @news_link_comments
  end

  # GET /news_link_comments/1
  def show
    render json: @news_link_comment
  end

  # POST /news_link_comments
  def create
    @news_link_comment = NewsLinkComment.new(news_link_comment_params)

    if @news_link_comment.save
      render json: @news_link_comment, status: :created, location: @news_link_comment
    else
      render json: @news_link_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_link_comments/1
  def update
    if @news_link_comment.update(news_link_comment_params)
      render json: @news_link_comment
    else
      render json: @news_link_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_link_comments/1
  def destroy
    @news_link_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_link_comment
      @news_link_comment = NewsLinkComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_link_comment_params
      params.fetch(:news_link_comment, {})
    end
end
