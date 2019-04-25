class GroupMessageCommentsController < ApplicationController
  before_action :set_group_message_comment, only: [:show, :update, :destroy]

  # GET /group_message_comments
  def index
    @group_message_comments = GroupMessageComment.all

    render json: @group_message_comments
  end

  # GET /group_message_comments/1
  def show
    render json: @group_message_comment
  end

  # POST /group_message_comments
  def create
    @group_message_comment = GroupMessageComment.new(group_message_comment_params)

    if @group_message_comment.save
      render json: @group_message_comment, status: :created, location: @group_message_comment
    else
      render json: @group_message_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_message_comments/1
  def update
    if @group_message_comment.update(group_message_comment_params)
      render json: @group_message_comment
    else
      render json: @group_message_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_message_comments/1
  def destroy
    @group_message_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_message_comment
      @group_message_comment = GroupMessageComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_message_comment_params
      params.fetch(:group_message_comment, {})
    end
end
