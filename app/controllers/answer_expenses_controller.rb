class AnswerExpensesController < ApplicationController
  before_action :set_answer_expense, only: [:show, :update, :destroy]

  # GET /answer_expenses
  def index
    @answer_expenses = AnswerExpense.all

    render json: @answer_expenses
  end

  # GET /answer_expenses/1
  def show
    render json: @answer_expense
  end

  # POST /answer_expenses
  def create
    @answer_expense = AnswerExpense.new(answer_expense_params)

    if @answer_expense.save
      render json: @answer_expense, status: :created, location: @answer_expense
    else
      render json: @answer_expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /answer_expenses/1
  def update
    if @answer_expense.update(answer_expense_params)
      render json: @answer_expense
    else
      render json: @answer_expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /answer_expenses/1
  def destroy
    @answer_expense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_expense
      @answer_expense = AnswerExpense.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_expense_params
      params.fetch(:answer_expense, {})
    end
end
