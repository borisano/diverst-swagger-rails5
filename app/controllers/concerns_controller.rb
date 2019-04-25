class ConcernsController < ApplicationController
  before_action :set_concern, only: [:show, :update, :destroy]

  # GET /concerns
  def index
    @concerns = Concern.all

    render json: @concerns
  end

  # GET /concerns/1
  def show
    render json: @concern
  end

  # POST /concerns
  def create
    @concern = Concern.new(concern_params)

    if @concern.save
      render json: @concern, status: :created, location: @concern
    else
      render json: @concern.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /concerns/1
  def update
    if @concern.update(concern_params)
      render json: @concern
    else
      render json: @concern.errors, status: :unprocessable_entity
    end
  end

  # DELETE /concerns/1
  def destroy
    @concern.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concern
      @concern = Concern.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def concern_params
      params.fetch(:concern, {})
    end
end
