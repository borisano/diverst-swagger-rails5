class EmailVariablesController < ApplicationController
  before_action :set_email_variable, only: [:show, :update, :destroy]

  # GET /email_variables
  def index
    @email_variables = EmailVariable.all

    render json: @email_variables
  end

  # GET /email_variables/1
  def show
    render json: @email_variable
  end

  # POST /email_variables
  def create
    @email_variable = EmailVariable.new(email_variable_params)

    if @email_variable.save
      render json: @email_variable, status: :created, location: @email_variable
    else
      render json: @email_variable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /email_variables/1
  def update
    if @email_variable.update(email_variable_params)
      render json: @email_variable
    else
      render json: @email_variable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /email_variables/1
  def destroy
    @email_variable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_variable
      @email_variable = EmailVariable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def email_variable_params
      params.fetch(:email_variable, {})
    end
end
