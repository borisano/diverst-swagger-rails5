class ClockworkDatabaseEventsController < ApplicationController
  before_action :set_clockwork_database_event, only: [:show, :update, :destroy]

  # GET /clockwork_database_events
  def index
    @clockwork_database_events = ClockworkDatabaseEvent.all

    render json: @clockwork_database_events
  end

  # GET /clockwork_database_events/1
  def show
    render json: @clockwork_database_event
  end

  # POST /clockwork_database_events
  def create
    @clockwork_database_event = ClockworkDatabaseEvent.new(clockwork_database_event_params)

    if @clockwork_database_event.save
      render json: @clockwork_database_event, status: :created, location: @clockwork_database_event
    else
      render json: @clockwork_database_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clockwork_database_events/1
  def update
    if @clockwork_database_event.update(clockwork_database_event_params)
      render json: @clockwork_database_event
    else
      render json: @clockwork_database_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clockwork_database_events/1
  def destroy
    @clockwork_database_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clockwork_database_event
      @clockwork_database_event = ClockworkDatabaseEvent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clockwork_database_event_params
      params.fetch(:clockwork_database_event, {})
    end
end
