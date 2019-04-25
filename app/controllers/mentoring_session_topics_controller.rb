class MentoringSessionTopicsController < ApplicationController
  before_action :set_mentoring_session_topic, only: [:show, :update, :destroy]

  # GET /mentoring_session_topics
  def index
    @mentoring_session_topics = MentoringSessionTopic.all

    render json: @mentoring_session_topics
  end

  # GET /mentoring_session_topics/1
  def show
    render json: @mentoring_session_topic
  end

  # POST /mentoring_session_topics
  def create
    @mentoring_session_topic = MentoringSessionTopic.new(mentoring_session_topic_params)

    if @mentoring_session_topic.save
      render json: @mentoring_session_topic, status: :created, location: @mentoring_session_topic
    else
      render json: @mentoring_session_topic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentoring_session_topics/1
  def update
    if @mentoring_session_topic.update(mentoring_session_topic_params)
      render json: @mentoring_session_topic
    else
      render json: @mentoring_session_topic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentoring_session_topics/1
  def destroy
    @mentoring_session_topic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentoring_session_topic
      @mentoring_session_topic = MentoringSessionTopic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentoring_session_topic_params
      params.fetch(:mentoring_session_topic, {})
    end
end
