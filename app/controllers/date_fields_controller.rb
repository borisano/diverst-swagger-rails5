class DateFieldsController < ApplicationController
  before_action :set_date_field, only: [:show, :update, :destroy]

  # GET /date_fields
  def index
    @date_fields = DateField.all

    render json: @date_fields
  end

  # GET /date_fields/1
  def show
    render json: @date_field
  end

  # POST /date_fields
  def create
    @date_field = DateField.new(date_field_params)

    if @date_field.save
      render json: @date_field, status: :created, location: @date_field
    else
      render json: @date_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /date_fields/1
  def update
    if @date_field.update(date_field_params)
      render json: @date_field
    else
      render json: @date_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /date_fields/1
  def destroy
    @date_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_field
      @date_field = DateField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def date_field_params
      params.fetch(:date_field, {})
    end
end
