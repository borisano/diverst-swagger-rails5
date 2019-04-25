class MentorshipSessionsController < ApplicationController
  before_action :set_mentorship_session, only: [:show, :update, :destroy]

  # GET /mentorship_sessions
  def index
    @mentorship_sessions = MentorshipSession.all

    render json: @mentorship_sessions
  end

  # GET /mentorship_sessions/1
  def show
    render json: @mentorship_session
  end

  # POST /mentorship_sessions
  def create
    @mentorship_session = MentorshipSession.new(mentorship_session_params)

    if @mentorship_session.save
      render json: @mentorship_session, status: :created, location: @mentorship_session
    else
      render json: @mentorship_session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentorship_sessions/1
  def update
    if @mentorship_session.update(mentorship_session_params)
      render json: @mentorship_session
    else
      render json: @mentorship_session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentorship_sessions/1
  def destroy
    @mentorship_session.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentorship_session
      @mentorship_session = MentorshipSession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentorship_session_params
      params.fetch(:mentorship_session, {})
    end
end
