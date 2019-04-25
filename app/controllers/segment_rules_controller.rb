class SegmentRulesController < ApplicationController
  before_action :set_segment_rule, only: [:show, :update, :destroy]

  # GET /segment_rules
  def index
    @segment_rules = SegmentRule.all

    render json: @segment_rules
  end

  # GET /segment_rules/1
  def show
    render json: @segment_rule
  end

  # POST /segment_rules
  def create
    @segment_rule = SegmentRule.new(segment_rule_params)

    if @segment_rule.save
      render json: @segment_rule, status: :created, location: @segment_rule
    else
      render json: @segment_rule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /segment_rules/1
  def update
    if @segment_rule.update(segment_rule_params)
      render json: @segment_rule
    else
      render json: @segment_rule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /segment_rules/1
  def destroy
    @segment_rule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segment_rule
      @segment_rule = SegmentRule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def segment_rule_params
      params.fetch(:segment_rule, {})
    end
end
