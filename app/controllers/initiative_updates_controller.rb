class InitiativeUpdatesController < ApplicationController
  before_action :set_initiative_update, only: [:show, :update, :destroy]

  # GET /initiative_updates
  def index
    @initiative_updates = InitiativeUpdate.all

    render json: @initiative_updates
  end

  # GET /initiative_updates/1
  def show
    render json: @initiative_update
  end

  # POST /initiative_updates
  def create
    @initiative_update = InitiativeUpdate.new(initiative_update_params)

    if @initiative_update.save
      render json: @initiative_update, status: :created, location: @initiative_update
    else
      render json: @initiative_update.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_updates/1
  def update
    if @initiative_update.update(initiative_update_params)
      render json: @initiative_update
    else
      render json: @initiative_update.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_updates/1
  def destroy
    @initiative_update.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_update
      @initiative_update = InitiativeUpdate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_update_params
      params.fetch(:initiative_update, {})
    end
end
