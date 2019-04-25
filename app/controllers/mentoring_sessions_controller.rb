class MentoringSessionsController < ApplicationController
  before_action :set_mentoring_session, only: [:show, :update, :destroy]

  # GET /mentoring_sessions
  def index
    @mentoring_sessions = MentoringSession.all

    render json: @mentoring_sessions
  end

  # GET /mentoring_sessions/1
  def show
    render json: @mentoring_session
  end

  # POST /mentoring_sessions
  def create
    @mentoring_session = MentoringSession.new(mentoring_session_params)

    if @mentoring_session.save
      render json: @mentoring_session, status: :created, location: @mentoring_session
    else
      render json: @mentoring_session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentoring_sessions/1
  def update
    if @mentoring_session.update(mentoring_session_params)
      render json: @mentoring_session
    else
      render json: @mentoring_session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentoring_sessions/1
  def destroy
    @mentoring_session.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentoring_session
      @mentoring_session = MentoringSession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentoring_session_params
      params.fetch(:mentoring_session, {})
    end
end
