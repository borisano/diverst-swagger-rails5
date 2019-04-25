class EnterpriseEmailVariablesController < ApplicationController
  before_action :set_enterprise_email_variable, only: [:show, :update, :destroy]

  # GET /enterprise_email_variables
  def index
    @enterprise_email_variables = EnterpriseEmailVariable.all

    render json: @enterprise_email_variables
  end

  # GET /enterprise_email_variables/1
  def show
    render json: @enterprise_email_variable
  end

  # POST /enterprise_email_variables
  def create
    @enterprise_email_variable = EnterpriseEmailVariable.new(enterprise_email_variable_params)

    if @enterprise_email_variable.save
      render json: @enterprise_email_variable, status: :created, location: @enterprise_email_variable
    else
      render json: @enterprise_email_variable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enterprise_email_variables/1
  def update
    if @enterprise_email_variable.update(enterprise_email_variable_params)
      render json: @enterprise_email_variable
    else
      render json: @enterprise_email_variable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enterprise_email_variables/1
  def destroy
    @enterprise_email_variable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enterprise_email_variable
      @enterprise_email_variable = EnterpriseEmailVariable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enterprise_email_variable_params
      params.fetch(:enterprise_email_variable, {})
    end
end
