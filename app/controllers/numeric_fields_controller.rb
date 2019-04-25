class NumericFieldsController < ApplicationController
  before_action :set_numeric_field, only: [:show, :update, :destroy]

  # GET /numeric_fields
  def index
    @numeric_fields = NumericField.all

    render json: @numeric_fields
  end

  # GET /numeric_fields/1
  def show
    render json: @numeric_field
  end

  # POST /numeric_fields
  def create
    @numeric_field = NumericField.new(numeric_field_params)

    if @numeric_field.save
      render json: @numeric_field, status: :created, location: @numeric_field
    else
      render json: @numeric_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /numeric_fields/1
  def update
    if @numeric_field.update(numeric_field_params)
      render json: @numeric_field
    else
      render json: @numeric_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /numeric_fields/1
  def destroy
    @numeric_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_numeric_field
      @numeric_field = NumericField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def numeric_field_params
      params.fetch(:numeric_field, {})
    end
end
