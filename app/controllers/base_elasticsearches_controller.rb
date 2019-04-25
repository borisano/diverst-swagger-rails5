class BaseElasticsearchesController < ApplicationController
  before_action :set_base_elasticsearch, only: [:show, :update, :destroy]

  # GET /base_elasticsearches
  def index
    @base_elasticsearches = BaseElasticsearch.all

    render json: @base_elasticsearches
  end

  # GET /base_elasticsearches/1
  def show
    render json: @base_elasticsearch
  end

  # POST /base_elasticsearches
  def create
    @base_elasticsearch = BaseElasticsearch.new(base_elasticsearch_params)

    if @base_elasticsearch.save
      render json: @base_elasticsearch, status: :created, location: @base_elasticsearch
    else
      render json: @base_elasticsearch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /base_elasticsearches/1
  def update
    if @base_elasticsearch.update(base_elasticsearch_params)
      render json: @base_elasticsearch
    else
      render json: @base_elasticsearch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /base_elasticsearches/1
  def destroy
    @base_elasticsearch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_elasticsearch
      @base_elasticsearch = BaseElasticsearch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def base_elasticsearch_params
      params.fetch(:base_elasticsearch, {})
    end
end
