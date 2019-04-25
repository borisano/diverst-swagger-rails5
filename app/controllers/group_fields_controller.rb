class GroupFieldsController < ApplicationController
  before_action :set_group_field, only: [:show, :update, :destroy]

  # GET /group_fields
  def index
    @group_fields = GroupField.all

    render json: @group_fields
  end

  # GET /group_fields/1
  def show
    render json: @group_field
  end

  # POST /group_fields
  def create
    @group_field = GroupField.new(group_field_params)

    if @group_field.save
      render json: @group_field, status: :created, location: @group_field
    else
      render json: @group_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_fields/1
  def update
    if @group_field.update(group_field_params)
      render json: @group_field
    else
      render json: @group_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_fields/1
  def destroy
    @group_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_field
      @group_field = GroupField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_field_params
      params.fetch(:group_field, {})
    end
end
