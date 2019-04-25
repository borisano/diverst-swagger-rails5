class PolicyGroupTemplatesController < ApplicationController
  before_action :set_policy_group_template, only: [:show, :update, :destroy]

  # GET /policy_group_templates
  def index
    @policy_group_templates = PolicyGroupTemplate.all

    render json: @policy_group_templates
  end

  # GET /policy_group_templates/1
  def show
    render json: @policy_group_template
  end

  # POST /policy_group_templates
  def create
    @policy_group_template = PolicyGroupTemplate.new(policy_group_template_params)

    if @policy_group_template.save
      render json: @policy_group_template, status: :created, location: @policy_group_template
    else
      render json: @policy_group_template.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /policy_group_templates/1
  def update
    if @policy_group_template.update(policy_group_template_params)
      render json: @policy_group_template
    else
      render json: @policy_group_template.errors, status: :unprocessable_entity
    end
  end

  # DELETE /policy_group_templates/1
  def destroy
    @policy_group_template.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_group_template
      @policy_group_template = PolicyGroupTemplate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def policy_group_template_params
      params.fetch(:policy_group_template, {})
    end
end
