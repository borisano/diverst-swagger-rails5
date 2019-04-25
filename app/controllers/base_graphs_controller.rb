class BaseGraphsController < ApplicationController
  before_action :set_base_graph, only: [:show, :update, :destroy]

  # GET /base_graphs
  def index
    @base_graphs = BaseGraph.all

    render json: @base_graphs
  end

  # GET /base_graphs/1
  def show
    render json: @base_graph
  end

  # POST /base_graphs
  def create
    @base_graph = BaseGraph.new(base_graph_params)

    if @base_graph.save
      render json: @base_graph, status: :created, location: @base_graph
    else
      render json: @base_graph.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /base_graphs/1
  def update
    if @base_graph.update(base_graph_params)
      render json: @base_graph
    else
      render json: @base_graph.errors, status: :unprocessable_entity
    end
  end

  # DELETE /base_graphs/1
  def destroy
    @base_graph.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_graph
      @base_graph = BaseGraph.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def base_graph_params
      params.fetch(:base_graph, {})
    end
end
