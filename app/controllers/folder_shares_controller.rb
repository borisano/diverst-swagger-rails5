class FolderSharesController < ApplicationController
  before_action :set_folder_share, only: [:show, :update, :destroy]

  # GET /folder_shares
  def index
    @folder_shares = FolderShare.all

    render json: @folder_shares
  end

  # GET /folder_shares/1
  def show
    render json: @folder_share
  end

  # POST /folder_shares
  def create
    @folder_share = FolderShare.new(folder_share_params)

    if @folder_share.save
      render json: @folder_share, status: :created, location: @folder_share
    else
      render json: @folder_share.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /folder_shares/1
  def update
    if @folder_share.update(folder_share_params)
      render json: @folder_share
    else
      render json: @folder_share.errors, status: :unprocessable_entity
    end
  end

  # DELETE /folder_shares/1
  def destroy
    @folder_share.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folder_share
      @folder_share = FolderShare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def folder_share_params
      params.fetch(:folder_share, {})
    end
end
