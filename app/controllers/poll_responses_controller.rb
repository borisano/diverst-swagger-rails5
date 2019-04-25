class PollResponsesController < ApplicationController
  before_action :set_poll_response, only: [:show, :update, :destroy]

  # GET /poll_responses
  def index
    @poll_responses = PollResponse.all

    render json: @poll_responses
  end

  # GET /poll_responses/1
  def show
    render json: @poll_response
  end

  # POST /poll_responses
  def create
    @poll_response = PollResponse.new(poll_response_params)

    if @poll_response.save
      render json: @poll_response, status: :created, location: @poll_response
    else
      render json: @poll_response.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poll_responses/1
  def update
    if @poll_response.update(poll_response_params)
      render json: @poll_response
    else
      render json: @poll_response.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poll_responses/1
  def destroy
    @poll_response.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_response
      @poll_response = PollResponse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poll_response_params
      params.fetch(:poll_response, {})
    end
end
