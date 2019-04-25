class PillarsController < ApplicationController
  before_action :set_pillar, only: [:show, :update, :destroy]

  # GET /pillars
  def index
    @pillars = Pillar.all

    render json: @pillars
  end

  # GET /pillars/1
  def show
    render json: @pillar
  end

  # POST /pillars
  def create
    @pillar = Pillar.new(pillar_params)

    if @pillar.save
      render json: @pillar, status: :created, location: @pillar
    else
      render json: @pillar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pillars/1
  def update
    if @pillar.update(pillar_params)
      render json: @pillar
    else
      render json: @pillar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pillars/1
  def destroy
    @pillar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pillar
      @pillar = Pillar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pillar_params
      params.fetch(:pillar, {})
    end
end
