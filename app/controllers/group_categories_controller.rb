class GroupCategoriesController < ApplicationController
  before_action :set_group_category, only: [:show, :update, :destroy]

  # GET /group_categories
  def index
    @group_categories = GroupCategory.all

    render json: @group_categories
  end

  # GET /group_categories/1
  def show
    render json: @group_category
  end

  # POST /group_categories
  def create
    @group_category = GroupCategory.new(group_category_params)

    if @group_category.save
      render json: @group_category, status: :created, location: @group_category
    else
      render json: @group_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_categories/1
  def update
    if @group_category.update(group_category_params)
      render json: @group_category
    else
      render json: @group_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_categories/1
  def destroy
    @group_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_category
      @group_category = GroupCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_category_params
      params.fetch(:group_category, {})
    end
end
