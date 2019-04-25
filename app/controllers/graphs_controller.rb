class GraphsController < ApplicationController
  before_action :set_graph, only: [:show, :update, :destroy]

  # GET /graphs
  def index
    @graphs = Graph.all

    render json: @graphs
  end

  # GET /graphs/1
  def show
    render json: @graph
  end

  # POST /graphs
  def create
    @graph = Graph.new(graph_params)

    if @graph.save
      render json: @graph, status: :created, location: @graph
    else
      render json: @graph.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /graphs/1
  def update
    if @graph.update(graph_params)
      render json: @graph
    else
      render json: @graph.errors, status: :unprocessable_entity
    end
  end

  # DELETE /graphs/1
  def destroy
    @graph.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graph
      @graph = Graph.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def graph_params
      params.fetch(:graph, {})
    end
end
