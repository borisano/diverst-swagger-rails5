require 'test_helper'

class InitiativeExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_expense = initiative_expenses(:one)
  end

  test "should get index" do
    get initiative_expenses_url, as: :json
    assert_response :success
  end

  test "should create initiative_expense" do
    assert_difference('InitiativeExpense.count') do
      post initiative_expenses_url, params: { initiative_expense: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_expense" do
    get initiative_expense_url(@initiative_expense), as: :json
    assert_response :success
  end

  test "should update initiative_expense" do
    patch initiative_expense_url(@initiative_expense), params: { initiative_expense: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_expense" do
    assert_difference('InitiativeExpense.count', -1) do
      delete initiative_expense_url(@initiative_expense), as: :json
    end

    assert_response 204
  end
end
