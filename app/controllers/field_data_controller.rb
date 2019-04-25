class FieldDataController < ApplicationController
  before_action :set_field_datum, only: [:show, :update, :destroy]

  # GET /field_data
  def index
    @field_data = FieldDatum.all

    render json: @field_data
  end

  # GET /field_data/1
  def show
    render json: @field_datum
  end

  # POST /field_data
  def create
    @field_datum = FieldDatum.new(field_datum_params)

    if @field_datum.save
      render json: @field_datum, status: :created, location: @field_datum
    else
      render json: @field_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /field_data/1
  def update
    if @field_datum.update(field_datum_params)
      render json: @field_datum
    else
      render json: @field_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /field_data/1
  def destroy
    @field_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field_datum
      @field_datum = FieldDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def field_datum_params
      params.fetch(:field_datum, {})
    end
end
