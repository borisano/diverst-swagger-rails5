class MentoringsController < ApplicationController
  before_action :set_mentoring, only: [:show, :update, :destroy]

  # GET /mentorings
  def index
    @mentorings = Mentoring.all

    render json: @mentorings
  end

  # GET /mentorings/1
  def show
    render json: @mentoring
  end

  # POST /mentorings
  def create
    @mentoring = Mentoring.new(mentoring_params)

    if @mentoring.save
      render json: @mentoring, status: :created, location: @mentoring
    else
      render json: @mentoring.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentorings/1
  def update
    if @mentoring.update(mentoring_params)
      render json: @mentoring
    else
      render json: @mentoring.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentorings/1
  def destroy
    @mentoring.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentoring
      @mentoring = Mentoring.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentoring_params
      params.fetch(:mentoring, {})
    end
end
