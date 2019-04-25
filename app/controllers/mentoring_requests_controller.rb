class MentoringRequestsController < ApplicationController
  before_action :set_mentoring_request, only: [:show, :update, :destroy]

  # GET /mentoring_requests
  def index
    @mentoring_requests = MentoringRequest.all

    render json: @mentoring_requests
  end

  # GET /mentoring_requests/1
  def show
    render json: @mentoring_request
  end

  # POST /mentoring_requests
  def create
    @mentoring_request = MentoringRequest.new(mentoring_request_params)

    if @mentoring_request.save
      render json: @mentoring_request, status: :created, location: @mentoring_request
    else
      render json: @mentoring_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentoring_requests/1
  def update
    if @mentoring_request.update(mentoring_request_params)
      render json: @mentoring_request
    else
      render json: @mentoring_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentoring_requests/1
  def destroy
    @mentoring_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentoring_request
      @mentoring_request = MentoringRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentoring_request_params
      params.fetch(:mentoring_request, {})
    end
end
