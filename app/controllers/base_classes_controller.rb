class BaseClassesController < ApplicationController
  before_action :set_base_class, only: [:show, :update, :destroy]

  # GET /base_classes
  def index
    @base_classes = BaseClass.all

    render json: @base_classes
  end

  # GET /base_classes/1
  def show
    render json: @base_class
  end

  # POST /base_classes
  def create
    @base_class = BaseClass.new(base_class_params)

    if @base_class.save
      render json: @base_class, status: :created, location: @base_class
    else
      render json: @base_class.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /base_classes/1
  def update
    if @base_class.update(base_class_params)
      render json: @base_class
    else
      render json: @base_class.errors, status: :unprocessable_entity
    end
  end

  # DELETE /base_classes/1
  def destroy
    @base_class.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_class
      @base_class = BaseClass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def base_class_params
      params.fetch(:base_class, {})
    end
end
