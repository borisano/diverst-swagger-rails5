class CheckboxFieldsController < ApplicationController
  before_action :set_checkbox_field, only: [:show, :update, :destroy]

  # GET /checkbox_fields
  def index
    @checkbox_fields = CheckboxField.all

    render json: @checkbox_fields
  end

  # GET /checkbox_fields/1
  def show
    render json: @checkbox_field
  end

  # POST /checkbox_fields
  def create
    @checkbox_field = CheckboxField.new(checkbox_field_params)

    if @checkbox_field.save
      render json: @checkbox_field, status: :created, location: @checkbox_field
    else
      render json: @checkbox_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /checkbox_fields/1
  def update
    if @checkbox_field.update(checkbox_field_params)
      render json: @checkbox_field
    else
      render json: @checkbox_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /checkbox_fields/1
  def destroy
    @checkbox_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkbox_field
      @checkbox_field = CheckboxField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def checkbox_field_params
      params.fetch(:checkbox_field, {})
    end
end
