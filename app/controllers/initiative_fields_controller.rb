class InitiativeFieldsController < ApplicationController
  before_action :set_initiative_field, only: [:show, :update, :destroy]

  # GET /initiative_fields
  def index
    @initiative_fields = InitiativeField.all

    render json: @initiative_fields
  end

  # GET /initiative_fields/1
  def show
    render json: @initiative_field
  end

  # POST /initiative_fields
  def create
    @initiative_field = InitiativeField.new(initiative_field_params)

    if @initiative_field.save
      render json: @initiative_field, status: :created, location: @initiative_field
    else
      render json: @initiative_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_fields/1
  def update
    if @initiative_field.update(initiative_field_params)
      render json: @initiative_field
    else
      render json: @initiative_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_fields/1
  def destroy
    @initiative_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_field
      @initiative_field = InitiativeField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_field_params
      params.fetch(:initiative_field, {})
    end
end
