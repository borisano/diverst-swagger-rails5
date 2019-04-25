class GroupsFieldsController < ApplicationController
  before_action :set_groups_field, only: [:show, :update, :destroy]

  # GET /groups_fields
  def index
    @groups_fields = GroupsField.all

    render json: @groups_fields
  end

  # GET /groups_fields/1
  def show
    render json: @groups_field
  end

  # POST /groups_fields
  def create
    @groups_field = GroupsField.new(groups_field_params)

    if @groups_field.save
      render json: @groups_field, status: :created, location: @groups_field
    else
      render json: @groups_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups_fields/1
  def update
    if @groups_field.update(groups_field_params)
      render json: @groups_field
    else
      render json: @groups_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups_fields/1
  def destroy
    @groups_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groups_field
      @groups_field = GroupsField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def groups_field_params
      params.fetch(:groups_field, {})
    end
end
