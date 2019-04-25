class BaseSearchesController < ApplicationController
  before_action :set_base_search, only: [:show, :update, :destroy]

  # GET /base_searches
  def index
    @base_searches = BaseSearch.all

    render json: @base_searches
  end

  # GET /base_searches/1
  def show
    render json: @base_search
  end

  # POST /base_searches
  def create
    @base_search = BaseSearch.new(base_search_params)

    if @base_search.save
      render json: @base_search, status: :created, location: @base_search
    else
      render json: @base_search.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /base_searches/1
  def update
    if @base_search.update(base_search_params)
      render json: @base_search
    else
      render json: @base_search.errors, status: :unprocessable_entity
    end
  end

  # DELETE /base_searches/1
  def destroy
    @base_search.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_search
      @base_search = BaseSearch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def base_search_params
      params.fetch(:base_search, {})
    end
end
