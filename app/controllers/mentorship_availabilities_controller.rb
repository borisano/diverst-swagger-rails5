class MentorshipAvailabilitiesController < ApplicationController
  before_action :set_mentorship_availability, only: [:show, :update, :destroy]

  # GET /mentorship_availabilities
  def index
    @mentorship_availabilities = MentorshipAvailability.all

    render json: @mentorship_availabilities
  end

  # GET /mentorship_availabilities/1
  def show
    render json: @mentorship_availability
  end

  # POST /mentorship_availabilities
  def create
    @mentorship_availability = MentorshipAvailability.new(mentorship_availability_params)

    if @mentorship_availability.save
      render json: @mentorship_availability, status: :created, location: @mentorship_availability
    else
      render json: @mentorship_availability.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentorship_availabilities/1
  def update
    if @mentorship_availability.update(mentorship_availability_params)
      render json: @mentorship_availability
    else
      render json: @mentorship_availability.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentorship_availabilities/1
  def destroy
    @mentorship_availability.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentorship_availability
      @mentorship_availability = MentorshipAvailability.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentorship_availability_params
      params.fetch(:mentorship_availability, {})
    end
end
