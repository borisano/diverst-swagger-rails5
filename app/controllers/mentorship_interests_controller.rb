class MentorshipInterestsController < ApplicationController
  before_action :set_mentorship_interest, only: [:show, :update, :destroy]

  # GET /mentorship_interests
  def index
    @mentorship_interests = MentorshipInterest.all

    render json: @mentorship_interests
  end

  # GET /mentorship_interests/1
  def show
    render json: @mentorship_interest
  end

  # POST /mentorship_interests
  def create
    @mentorship_interest = MentorshipInterest.new(mentorship_interest_params)

    if @mentorship_interest.save
      render json: @mentorship_interest, status: :created, location: @mentorship_interest
    else
      render json: @mentorship_interest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentorship_interests/1
  def update
    if @mentorship_interest.update(mentorship_interest_params)
      render json: @mentorship_interest
    else
      render json: @mentorship_interest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentorship_interests/1
  def destroy
    @mentorship_interest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentorship_interest
      @mentorship_interest = MentorshipInterest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentorship_interest_params
      params.fetch(:mentorship_interest, {})
    end
end
