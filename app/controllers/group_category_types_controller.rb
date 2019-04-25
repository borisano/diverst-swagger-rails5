class GroupCategoryTypesController < ApplicationController
  before_action :set_group_category_type, only: [:show, :update, :destroy]

  # GET /group_category_types
  def index
    @group_category_types = GroupCategoryType.all

    render json: @group_category_types
  end

  # GET /group_category_types/1
  def show
    render json: @group_category_type
  end

  # POST /group_category_types
  def create
    @group_category_type = GroupCategoryType.new(group_category_type_params)

    if @group_category_type.save
      render json: @group_category_type, status: :created, location: @group_category_type
    else
      render json: @group_category_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_category_types/1
  def update
    if @group_category_type.update(group_category_type_params)
      render json: @group_category_type
    else
      render json: @group_category_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_category_types/1
  def destroy
    @group_category_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_category_type
      @group_category_type = GroupCategoryType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_category_type_params
      params.fetch(:group_category_type, {})
    end
end
