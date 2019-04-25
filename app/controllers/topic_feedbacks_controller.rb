class TopicFeedbacksController < ApplicationController
  before_action :set_topic_feedback, only: [:show, :update, :destroy]

  # GET /topic_feedbacks
  def index
    @topic_feedbacks = TopicFeedback.all

    render json: @topic_feedbacks
  end

  # GET /topic_feedbacks/1
  def show
    render json: @topic_feedback
  end

  # POST /topic_feedbacks
  def create
    @topic_feedback = TopicFeedback.new(topic_feedback_params)

    if @topic_feedback.save
      render json: @topic_feedback, status: :created, location: @topic_feedback
    else
      render json: @topic_feedback.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /topic_feedbacks/1
  def update
    if @topic_feedback.update(topic_feedback_params)
      render json: @topic_feedback
    else
      render json: @topic_feedback.errors, status: :unprocessable_entity
    end
  end

  # DELETE /topic_feedbacks/1
  def destroy
    @topic_feedback.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic_feedback
      @topic_feedback = TopicFeedback.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def topic_feedback_params
      params.fetch(:topic_feedback, {})
    end
end
