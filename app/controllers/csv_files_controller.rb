class CsvFilesController < ApplicationController
  before_action :set_csv_file, only: [:show, :update, :destroy]

  # GET /csv_files
  def index
    @csv_files = CsvFile.all

    render json: @csv_files
  end

  # GET /csv_files/1
  def show
    render json: @csv_file
  end

  # POST /csv_files
  def create
    @csv_file = CsvFile.new(csv_file_params)

    if @csv_file.save
      render json: @csv_file, status: :created, location: @csv_file
    else
      render json: @csv_file.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /csv_files/1
  def update
    if @csv_file.update(csv_file_params)
      render json: @csv_file
    else
      render json: @csv_file.errors, status: :unprocessable_entity
    end
  end

  # DELETE /csv_files/1
  def destroy
    @csv_file.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csv_file
      @csv_file = CsvFile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def csv_file_params
      params.fetch(:csv_file, {})
    end
end
