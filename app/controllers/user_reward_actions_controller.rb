class UserRewardActionsController < ApplicationController
  before_action :set_user_reward_action, only: [:show, :update, :destroy]

  # GET /user_reward_actions
  def index
    @user_reward_actions = UserRewardAction.all

    render json: @user_reward_actions
  end

  # GET /user_reward_actions/1
  def show
    render json: @user_reward_action
  end

  # POST /user_reward_actions
  def create
    @user_reward_action = UserRewardAction.new(user_reward_action_params)

    if @user_reward_action.save
      render json: @user_reward_action, status: :created, location: @user_reward_action
    else
      render json: @user_reward_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_reward_actions/1
  def update
    if @user_reward_action.update(user_reward_action_params)
      render json: @user_reward_action
    else
      render json: @user_reward_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_reward_actions/1
  def destroy
    @user_reward_action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_reward_action
      @user_reward_action = UserRewardAction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_reward_action_params
      params.fetch(:user_reward_action, {})
    end
end
