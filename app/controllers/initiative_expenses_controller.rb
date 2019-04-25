class InitiativeExpensesController < ApplicationController
  before_action :set_initiative_expense, only: [:show, :update, :destroy]

  # GET /initiative_expenses
  def index
    @initiative_expenses = InitiativeExpense.all

    render json: @initiative_expenses
  end

  # GET /initiative_expenses/1
  def show
    render json: @initiative_expense
  end

  # POST /initiative_expenses
  def create
    @initiative_expense = InitiativeExpense.new(initiative_expense_params)

    if @initiative_expense.save
      render json: @initiative_expense, status: :created, location: @initiative_expense
    else
      render json: @initiative_expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /initiative_expenses/1
  def update
    if @initiative_expense.update(initiative_expense_params)
      render json: @initiative_expense
    else
      render json: @initiative_expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /initiative_expenses/1
  def destroy
    @initiative_expense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_initiative_expense
      @initiative_expense = InitiativeExpense.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def initiative_expense_params
      params.fetch(:initiative_expense, {})
    end
end
