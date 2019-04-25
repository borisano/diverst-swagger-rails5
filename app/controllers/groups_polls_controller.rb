class GroupsPollsController < ApplicationController
  before_action :set_groups_poll, only: [:show, :update, :destroy]

  # GET /groups_polls
  def index
    @groups_polls = GroupsPoll.all

    render json: @groups_polls
  end

  # GET /groups_polls/1
  def show
    render json: @groups_poll
  end

  # POST /groups_polls
  def create
    @groups_poll = GroupsPoll.new(groups_poll_params)

    if @groups_poll.save
      render json: @groups_poll, status: :created, location: @groups_poll
    else
      render json: @groups_poll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups_polls/1
  def update
    if @groups_poll.update(groups_poll_params)
      render json: @groups_poll
    else
      render json: @groups_poll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups_polls/1
  def destroy
    @groups_poll.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groups_poll
      @groups_poll = GroupsPoll.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def groups_poll_params
      params.fetch(:groups_poll, {})
    end
end
