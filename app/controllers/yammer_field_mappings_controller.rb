class YammerFieldMappingsController < ApplicationController
  before_action :set_yammer_field_mapping, only: [:show, :update, :destroy]

  # GET /yammer_field_mappings
  def index
    @yammer_field_mappings = YammerFieldMapping.all

    render json: @yammer_field_mappings
  end

  # GET /yammer_field_mappings/1
  def show
    render json: @yammer_field_mapping
  end

  # POST /yammer_field_mappings
  def create
    @yammer_field_mapping = YammerFieldMapping.new(yammer_field_mapping_params)

    if @yammer_field_mapping.save
      render json: @yammer_field_mapping, status: :created, location: @yammer_field_mapping
    else
      render json: @yammer_field_mapping.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yammer_field_mappings/1
  def update
    if @yammer_field_mapping.update(yammer_field_mapping_params)
      render json: @yammer_field_mapping
    else
      render json: @yammer_field_mapping.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yammer_field_mappings/1
  def destroy
    @yammer_field_mapping.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yammer_field_mapping
      @yammer_field_mapping = YammerFieldMapping.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def yammer_field_mapping_params
      params.fetch(:yammer_field_mapping, {})
    end
end
