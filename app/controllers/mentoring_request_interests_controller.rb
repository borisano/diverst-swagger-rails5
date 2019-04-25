class MentoringRequestInterestsController < ApplicationController
  before_action :set_mentoring_request_interest, only: [:show, :update, :destroy]

  # GET /mentoring_request_interests
  def index
    @mentoring_request_interests = MentoringRequestInterest.all

    render json: @mentoring_request_interests
  end

  # GET /mentoring_request_interests/1
  def show
    render json: @mentoring_request_interest
  end

  # POST /mentoring_request_interests
  def create
    @mentoring_request_interest = MentoringRequestInterest.new(mentoring_request_interest_params)

    if @mentoring_request_interest.save
      render json: @mentoring_request_interest, status: :created, location: @mentoring_request_interest
    else
      render json: @mentoring_request_interest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentoring_request_interests/1
  def update
    if @mentoring_request_interest.update(mentoring_request_interest_params)
      render json: @mentoring_request_interest
    else
      render json: @mentoring_request_interest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentoring_request_interests/1
  def destroy
    @mentoring_request_interest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentoring_request_interest
      @mentoring_request_interest = MentoringRequestInterest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentoring_request_interest_params
      params.fetch(:mentoring_request_interest, {})
    end
end
