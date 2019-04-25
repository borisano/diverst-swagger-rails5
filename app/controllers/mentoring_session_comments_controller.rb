class MentoringSessionCommentsController < ApplicationController
  before_action :set_mentoring_session_comment, only: [:show, :update, :destroy]

  # GET /mentoring_session_comments
  def index
    @mentoring_session_comments = MentoringSessionComment.all

    render json: @mentoring_session_comments
  end

  # GET /mentoring_session_comments/1
  def show
    render json: @mentoring_session_comment
  end

  # POST /mentoring_session_comments
  def create
    @mentoring_session_comment = MentoringSessionComment.new(mentoring_session_comment_params)

    if @mentoring_session_comment.save
      render json: @mentoring_session_comment, status: :created, location: @mentoring_session_comment
    else
      render json: @mentoring_session_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentoring_session_comments/1
  def update
    if @mentoring_session_comment.update(mentoring_session_comment_params)
      render json: @mentoring_session_comment
    else
      render json: @mentoring_session_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentoring_session_comments/1
  def destroy
    @mentoring_session_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentoring_session_comment
      @mentoring_session_comment = MentoringSessionComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentoring_session_comment_params
      params.fetch(:mentoring_session_comment, {})
    end
end
