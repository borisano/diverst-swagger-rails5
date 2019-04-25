class AnswerUpvotesController < ApplicationController
  before_action :set_answer_upvote, only: [:show, :update, :destroy]

  # GET /answer_upvotes
  def index
    @answer_upvotes = AnswerUpvote.all

    render json: @answer_upvotes
  end

  # GET /answer_upvotes/1
  def show
    render json: @answer_upvote
  end

  # POST /answer_upvotes
  def create
    @answer_upvote = AnswerUpvote.new(answer_upvote_params)

    if @answer_upvote.save
      render json: @answer_upvote, status: :created, location: @answer_upvote
    else
      render json: @answer_upvote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /answer_upvotes/1
  def update
    if @answer_upvote.update(answer_upvote_params)
      render json: @answer_upvote
    else
      render json: @answer_upvote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /answer_upvotes/1
  def destroy
    @answer_upvote.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_upvote
      @answer_upvote = AnswerUpvote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_upvote_params
      params.fetch(:answer_upvote, {})
    end
end
