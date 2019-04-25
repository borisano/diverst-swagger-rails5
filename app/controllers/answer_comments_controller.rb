class AnswerCommentsController < ApplicationController
  before_action :set_answer_comment, only: [:show, :update, :destroy]

  # GET /answer_comments
  def index
    @answer_comments = AnswerComment.all

    render json: @answer_comments
  end

  # GET /answer_comments/1
  def show
    render json: @answer_comment
  end

  # POST /answer_comments
  def create
    @answer_comment = AnswerComment.new(answer_comment_params)

    if @answer_comment.save
      render json: @answer_comment, status: :created, location: @answer_comment
    else
      render json: @answer_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /answer_comments/1
  def update
    if @answer_comment.update(answer_comment_params)
      render json: @answer_comment
    else
      render json: @answer_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /answer_comments/1
  def destroy
    @answer_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_comment
      @answer_comment = AnswerComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_comment_params
      params.fetch(:answer_comment, {})
    end
end
