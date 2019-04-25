class SegmentationsController < ApplicationController
  before_action :set_segmentation, only: [:show, :update, :destroy]

  # GET /segmentations
  def index
    @segmentations = Segmentation.all

    render json: @segmentations
  end

  # GET /segmentations/1
  def show
    render json: @segmentation
  end

  # POST /segmentations
  def create
    @segmentation = Segmentation.new(segmentation_params)

    if @segmentation.save
      render json: @segmentation, status: :created, location: @segmentation
    else
      render json: @segmentation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /segmentations/1
  def update
    if @segmentation.update(segmentation_params)
      render json: @segmentation
    else
      render json: @segmentation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /segmentations/1
  def destroy
    @segmentation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segmentation
      @segmentation = Segmentation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def segmentation_params
      params.fetch(:segmentation, {})
    end
end
