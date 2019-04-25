class FrequencyPeriodsController < ApplicationController
  before_action :set_frequency_period, only: [:show, :update, :destroy]

  # GET /frequency_periods
  def index
    @frequency_periods = FrequencyPeriod.all

    render json: @frequency_periods
  end

  # GET /frequency_periods/1
  def show
    render json: @frequency_period
  end

  # POST /frequency_periods
  def create
    @frequency_period = FrequencyPeriod.new(frequency_period_params)

    if @frequency_period.save
      render json: @frequency_period, status: :created, location: @frequency_period
    else
      render json: @frequency_period.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /frequency_periods/1
  def update
    if @frequency_period.update(frequency_period_params)
      render json: @frequency_period
    else
      render json: @frequency_period.errors, status: :unprocessable_entity
    end
  end

  # DELETE /frequency_periods/1
  def destroy
    @frequency_period.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequency_period
      @frequency_period = FrequencyPeriod.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def frequency_period_params
      params.fetch(:frequency_period, {})
    end
end
