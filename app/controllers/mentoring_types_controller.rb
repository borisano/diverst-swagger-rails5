class MentoringTypesController < ApplicationController
  before_action :set_mentoring_type, only: [:show, :update, :destroy]

  # GET /mentoring_types
  def index
    @mentoring_types = MentoringType.all

    render json: @mentoring_types
  end

  # GET /mentoring_types/1
  def show
    render json: @mentoring_type
  end

  # POST /mentoring_types
  def create
    @mentoring_type = MentoringType.new(mentoring_type_params)

    if @mentoring_type.save
      render json: @mentoring_type, status: :created, location: @mentoring_type
    else
      render json: @mentoring_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mentoring_types/1
  def update
    if @mentoring_type.update(mentoring_type_params)
      render json: @mentoring_type
    else
      render json: @mentoring_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mentoring_types/1
  def destroy
    @mentoring_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentoring_type
      @mentoring_type = MentoringType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mentoring_type_params
      params.fetch(:mentoring_type, {})
    end
end
