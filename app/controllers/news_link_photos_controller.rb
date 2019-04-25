class NewsLinkPhotosController < ApplicationController
  before_action :set_news_link_photo, only: [:show, :update, :destroy]

  # GET /news_link_photos
  def index
    @news_link_photos = NewsLinkPhoto.all

    render json: @news_link_photos
  end

  # GET /news_link_photos/1
  def show
    render json: @news_link_photo
  end

  # POST /news_link_photos
  def create
    @news_link_photo = NewsLinkPhoto.new(news_link_photo_params)

    if @news_link_photo.save
      render json: @news_link_photo, status: :created, location: @news_link_photo
    else
      render json: @news_link_photo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_link_photos/1
  def update
    if @news_link_photo.update(news_link_photo_params)
      render json: @news_link_photo
    else
      render json: @news_link_photo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_link_photos/1
  def destroy
    @news_link_photo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_link_photo
      @news_link_photo = NewsLinkPhoto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_link_photo_params
      params.fetch(:news_link_photo, {})
    end
end
