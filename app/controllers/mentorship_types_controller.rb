class MentorshipTypesController < ApplicationController
  before_action :set_mentorship_type, only: [:show, :update, :destroy]

  # GET /mentorship_types
  def index
    @mentorship_types = MentorshipType.all

    render json: @mentorship_types
  end

  # GET /mentorship_types/1
  def show
    render json: @mentorship_type
  end

  # POST /mentorship_types
  def create
    @mentorship_type = MentorshipType.new(mentorship_type_params)

    if @mentorship_type.save
      render json: @mentorship_type, status: :created, location: @mentorship_type
    else
      render json: @mentorship_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentorship_types/1
  def update
    if @mentorship_type.update(mentorship_type_params)
      render json: @mentorship_type
    else
      render json: @mentorship_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentorship_types/1
  def destroy
    @mentorship_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentorship_type
      @mentorship_type = MentorshipType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentorship_type_params
      params.fetch(:mentorship_type, {})
    end
end
