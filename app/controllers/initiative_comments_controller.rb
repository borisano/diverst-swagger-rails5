class InitiativeCommentsController < ApplicationController
  before_action :set_initiative_comment, only: [:show, :update, :destroy]

  # GET /initiative_comments
  def index
    @initiative_comments = InitiativeComment.all

    render json: @initiative_comments
  end

  # GET /initiative_comments/1
  def show
    render json: @initiative_comment
  end

  # POST /initiative_comments
  def create
    @initiative_comment = InitiativeComment.new(initiative_comment_params)

    if @initiative_comment.save
      render json: @initiative_comment, status: :created, location: @initiative_comment
    else
      render json: @initiative_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_comments/1
  def update
    if @initiative_comment.update(initiative_comment_params)
      render json: @initiative_comment
    else
      render json: @initiative_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_comments/1
  def destroy
    @initiative_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_comment
      @initiative_comment = InitiativeComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_comment_params
      params.fetch(:initiative_comment, {})
    end
end
