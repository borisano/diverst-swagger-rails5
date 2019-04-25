class MobileFieldsController < ApplicationController
  before_action :set_mobile_field, only: [:show, :update, :destroy]

  # GET /mobile_fields
  def index
    @mobile_fields = MobileField.all

    render json: @mobile_fields
  end

  # GET /mobile_fields/1
  def show
    render json: @mobile_field
  end

  # POST /mobile_fields
  def create
    @mobile_field = MobileField.new(mobile_field_params)

    if @mobile_field.save
      render json: @mobile_field, status: :created, location: @mobile_field
    else
      render json: @mobile_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mobile_fields/1
  def update
    if @mobile_field.update(mobile_field_params)
      render json: @mobile_field
    else
      render json: @mobile_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mobile_fields/1
  def destroy
    @mobile_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobile_field
      @mobile_field = MobileField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mobile_field_params
      params.fetch(:mobile_field, {})
    end
end
