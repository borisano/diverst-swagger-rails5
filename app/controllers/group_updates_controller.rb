class GroupUpdatesController < ApplicationController
  before_action :set_group_update, only: [:show, :update, :destroy]

  # GET /group_updates
  def index
    @group_updates = GroupUpdate.all

    render json: @group_updates
  end

  # GET /group_updates/1
  def show
    render json: @group_update
  end

  # POST /group_updates
  def create
    @group_update = GroupUpdate.new(group_update_params)

    if @group_update.save
      render json: @group_update, status: :created, location: @group_update
    else
      render json: @group_update.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_updates/1
  def update
    if @group_update.update(group_update_params)
      render json: @group_update
    else
      render json: @group_update.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_updates/1
  def destroy
    @group_update.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_update
      @group_update = GroupUpdate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_update_params
      params.fetch(:group_update, {})
    end
end
