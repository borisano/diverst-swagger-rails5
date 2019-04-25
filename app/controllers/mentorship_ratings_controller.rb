class MentorshipRatingsController < ApplicationController
  before_action :set_mentorship_rating, only: [:show, :update, :destroy]

  # GET /mentorship_ratings
  def index
    @mentorship_ratings = MentorshipRating.all

    render json: @mentorship_ratings
  end

  # GET /mentorship_ratings/1
  def show
    render json: @mentorship_rating
  end

  # POST /mentorship_ratings
  def create
    @mentorship_rating = MentorshipRating.new(mentorship_rating_params)

    if @mentorship_rating.save
      render json: @mentorship_rating, status: :created, location: @mentorship_rating
    else
      render json: @mentorship_rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentorship_ratings/1
  def update
    if @mentorship_rating.update(mentorship_rating_params)
      render json: @mentorship_rating
    else
      render json: @mentorship_rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentorship_ratings/1
  def destroy
    @mentorship_rating.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentorship_rating
      @mentorship_rating = MentorshipRating.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentorship_rating_params
      params.fetch(:mentorship_rating, {})
    end
end
