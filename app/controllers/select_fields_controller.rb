class SelectFieldsController < ApplicationController
  before_action :set_select_field, only: [:show, :update, :destroy]

  # GET /select_fields
  def index
    @select_fields = SelectField.all

    render json: @select_fields
  end

  # GET /select_fields/1
  def show
    render json: @select_field
  end

  # POST /select_fields
  def create
    @select_field = SelectField.new(select_field_params)

    if @select_field.save
      render json: @select_field, status: :created, location: @select_field
    else
      render json: @select_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /select_fields/1
  def update
    if @select_field.update(select_field_params)
      render json: @select_field
    else
      render json: @select_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /select_fields/1
  def destroy
    @select_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_select_field
      @select_field = SelectField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def select_field_params
      params.fetch(:select_field, {})
    end
end
