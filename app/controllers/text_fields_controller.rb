class TextFieldsController < ApplicationController
  before_action :set_text_field, only: [:show, :update, :destroy]

  # GET /text_fields
  def index
    @text_fields = TextField.all

    render json: @text_fields
  end

  # GET /text_fields/1
  def show
    render json: @text_field
  end

  # POST /text_fields
  def create
    @text_field = TextField.new(text_field_params)

    if @text_field.save
      render json: @text_field, status: :created, location: @text_field
    else
      render json: @text_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /text_fields/1
  def update
    if @text_field.update(text_field_params)
      render json: @text_field
    else
      render json: @text_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /text_fields/1
  def destroy
    @text_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_field
      @text_field = TextField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def text_field_params
      params.fetch(:text_field, {})
    end
end
