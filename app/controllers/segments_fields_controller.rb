class SegmentsFieldsController < ApplicationController
  before_action :set_segments_field, only: [:show, :update, :destroy]

  # GET /segments_fields
  def index
    @segments_fields = SegmentsField.all

    render json: @segments_fields
  end

  # GET /segments_fields/1
  def show
    render json: @segments_field
  end

  # POST /segments_fields
  def create
    @segments_field = SegmentsField.new(segments_field_params)

    if @segments_field.save
      render json: @segments_field, status: :created, location: @segments_field
    else
      render json: @segments_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /segments_fields/1
  def update
    if @segments_field.update(segments_field_params)
      render json: @segments_field
    else
      render json: @segments_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /segments_fields/1
  def destroy
    @segments_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segments_field
      @segments_field = SegmentsField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def segments_field_params
      params.fetch(:segments_field, {})
    end
end
