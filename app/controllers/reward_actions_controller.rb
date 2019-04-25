class RewardActionsController < ApplicationController
  before_action :set_reward_action, only: [:show, :update, :destroy]

  # GET /reward_actions
  def index
    @reward_actions = RewardAction.all

    render json: @reward_actions
  end

  # GET /reward_actions/1
  def show
    render json: @reward_action
  end

  # POST /reward_actions
  def create
    @reward_action = RewardAction.new(reward_action_params)

    if @reward_action.save
      render json: @reward_action, status: :created, location: @reward_action
    else
      render json: @reward_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reward_actions/1
  def update
    if @reward_action.update(reward_action_params)
      render json: @reward_action
    else
      render json: @reward_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reward_actions/1
  def destroy
    @reward_action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward_action
      @reward_action = RewardAction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reward_action_params
      params.fetch(:reward_action, {})
    end
end
