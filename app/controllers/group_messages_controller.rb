class GroupMessagesController < ApplicationController
  before_action :set_group_message, only: [:show, :update, :destroy]

  # GET /group_messages
  def index
    @group_messages = GroupMessage.all

    render json: @group_messages
  end

  # GET /group_messages/1
  def show
    render json: @group_message
  end

  # POST /group_messages
  def create
    @group_message = GroupMessage.new(group_message_params)

    if @group_message.save
      render json: @group_message, status: :created, location: @group_message
    else
      render json: @group_message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_messages/1
  def update
    if @group_message.update(group_message_params)
      render json: @group_message
    else
      render json: @group_message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_messages/1
  def destroy
    @group_message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_message
      @group_message = GroupMessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_message_params
      params.fetch(:group_message, {})
    end
end
