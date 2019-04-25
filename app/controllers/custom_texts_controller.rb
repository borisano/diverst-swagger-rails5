class CustomTextsController < ApplicationController
  before_action :set_custom_text, only: [:show, :update, :destroy]

  # GET /custom_texts
  def index
    @custom_texts = CustomText.all

    render json: @custom_texts
  end

  # GET /custom_texts/1
  def show
    render json: @custom_text
  end

  # POST /custom_texts
  def create
    @custom_text = CustomText.new(custom_text_params)

    if @custom_text.save
      render json: @custom_text, status: :created, location: @custom_text
    else
      render json: @custom_text.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /custom_texts/1
  def update
    if @custom_text.update(custom_text_params)
      render json: @custom_text
    else
      render json: @custom_text.errors, status: :unprocessable_entity
    end
  end

  # DELETE /custom_texts/1
  def destroy
    @custom_text.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_text
      @custom_text = CustomText.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def custom_text_params
      params.fetch(:custom_text, {})
    end
end
