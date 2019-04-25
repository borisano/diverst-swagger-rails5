class PolicyGroupsController < ApplicationController
  before_action :set_policy_group, only: [:show, :update, :destroy]

  # GET /policy_groups
  def index
    @policy_groups = PolicyGroup.all

    render json: @policy_groups
  end

  # GET /policy_groups/1
  def show
    render json: @policy_group
  end

  # POST /policy_groups
  def create
    @policy_group = PolicyGroup.new(policy_group_params)

    if @policy_group.save
      render json: @policy_group, status: :created, location: @policy_group
    else
      render json: @policy_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /policy_groups/1
  def update
    if @policy_group.update(policy_group_params)
      render json: @policy_group
    else
      render json: @policy_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /policy_groups/1
  def destroy
    @policy_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_group
      @policy_group = PolicyGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def policy_group_params
      params.fetch(:policy_group, {})
    end
end
