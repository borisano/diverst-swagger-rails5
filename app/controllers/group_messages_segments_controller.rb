class GroupMessagesSegmentsController < ApplicationController
  before_action :set_group_messages_segment, only: [:show, :update, :destroy]

  # GET /group_messages_segments
  def index
    @group_messages_segments = GroupMessagesSegment.all

    render json: @group_messages_segments
  end

  # GET /group_messages_segments/1
  def show
    render json: @group_messages_segment
  end

  # POST /group_messages_segments
  def create
    @group_messages_segment = GroupMessagesSegment.new(group_messages_segment_params)

    if @group_messages_segment.save
      render json: @group_messages_segment, status: :created, location: @group_messages_segment
    else
      render json: @group_messages_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_messages_segments/1
  def update
    if @group_messages_segment.update(group_messages_segment_params)
      render json: @group_messages_segment
    else
      render json: @group_messages_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_messages_segments/1
  def destroy
    @group_messages_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_messages_segment
      @group_messages_segment = GroupMessagesSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_messages_segment_params
      params.fetch(:group_messages_segment, {})
    end
end
