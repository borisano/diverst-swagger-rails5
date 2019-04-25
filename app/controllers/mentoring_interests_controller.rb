class MentoringInterestsController < ApplicationController
  before_action :set_mentoring_interest, only: [:show, :update, :destroy]

  # GET /mentoring_interests
  def index
    @mentoring_interests = MentoringInterest.all

    render json: @mentoring_interests
  end

  # GET /mentoring_interests/1
  def show
    render json: @mentoring_interest
  end

  # POST /mentoring_interests
  def create
    @mentoring_interest = MentoringInterest.new(mentoring_interest_params)

    if @mentoring_interest.save
      render json: @mentoring_interest, status: :created, location: @mentoring_interest
    else
      render json: @mentoring_interest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentoring_interests/1
  def update
    if @mentoring_interest.update(mentoring_interest_params)
      render json: @mentoring_interest
    else
      render json: @mentoring_interest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentoring_interests/1
  def destroy
    @mentoring_interest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentoring_interest
      @mentoring_interest = MentoringInterest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentoring_interest_params
      params.fetch(:mentoring_interest, {})
    end
end
