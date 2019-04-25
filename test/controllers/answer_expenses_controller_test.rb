require 'test_helper'

class AnswerExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_expense = answer_expenses(:one)
  end

  test "should get index" do
    get answer_expenses_url, as: :json
    assert_response :success
  end

  test "should create answer_expense" do
    assert_difference('AnswerExpense.count') do
      post answer_expenses_url, params: { answer_expense: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show answer_expense" do
    get answer_expense_url(@answer_expense), as: :json
    assert_response :success
  end

  test "should update answer_expense" do
    patch answer_expense_url(@answer_expense), params: { answer_expense: {  } }, as: :json
    assert_response 200
  end

  test "should destroy answer_expense" do
    assert_difference('AnswerExpense.count', -1) do
      delete answer_expense_url(@answer_expense), as: :json
    end

    assert_response 204
  end
end
