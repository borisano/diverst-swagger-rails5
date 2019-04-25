class GroupLeadersController < ApplicationController
  before_action :set_group_leader, only: [:show, :update, :destroy]

  # GET /group_leaders
  def index
    @group_leaders = GroupLeader.all

    render json: @group_leaders
  end

  # GET /group_leaders/1
  def show
    render json: @group_leader
  end

  # POST /group_leaders
  def create
    @group_leader = GroupLeader.new(group_leader_params)

    if @group_leader.save
      render json: @group_leader, status: :created, location: @group_leader
    else
      render json: @group_leader.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_leaders/1
  def update
    if @group_leader.update(group_leader_params)
      render json: @group_leader
    else
      render json: @group_leader.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_leaders/1
  def destroy
    @group_leader.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_leader
      @group_leader = GroupLeader.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_leader_params
      params.fetch(:group_leader, {})
    end
end
