class InitiativeUsersController < ApplicationController
  before_action :set_initiative_user, only: [:show, :update, :destroy]

  # GET /initiative_users
  def index
    @initiative_users = InitiativeUser.all

    render json: @initiative_users
  end

  # GET /initiative_users/1
  def show
    render json: @initiative_user
  end

  # POST /initiative_users
  def create
    @initiative_user = InitiativeUser.new(initiative_user_params)

    if @initiative_user.save
      render json: @initiative_user, status: :created, location: @initiative_user
    else
      render json: @initiative_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_users/1
  def update
    if @initiative_user.update(initiative_user_params)
      render json: @initiative_user
    else
      render json: @initiative_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_users/1
  def destroy
    @initiative_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_user
      @initiative_user = InitiativeUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_user_params
      params.fetch(:initiative_user, {})
    end
end
