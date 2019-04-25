class UsersSegmentsController < ApplicationController
  before_action :set_users_segment, only: [:show, :update, :destroy]

  # GET /users_segments
  def index
    @users_segments = UsersSegment.all

    render json: @users_segments
  end

  # GET /users_segments/1
  def show
    render json: @users_segment
  end

  # POST /users_segments
  def create
    @users_segment = UsersSegment.new(users_segment_params)

    if @users_segment.save
      render json: @users_segment, status: :created, location: @users_segment
    else
      render json: @users_segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users_segments/1
  def update
    if @users_segment.update(users_segment_params)
      render json: @users_segment
    else
      render json: @users_segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users_segments/1
  def destroy
    @users_segment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_segment
      @users_segment = UsersSegment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def users_segment_params
      params.fetch(:users_segment, {})
    end
end
