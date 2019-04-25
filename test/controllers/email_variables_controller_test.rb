require 'test_helper'

class EmailVariablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_variable = email_variables(:one)
  end

  test "should get index" do
    get email_variables_url, as: :json
    assert_response :success
  end

  test "should create email_variable" do
    assert_difference('EmailVariable.count') do
      post email_variables_url, params: { email_variable: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show email_variable" do
    get email_variable_url(@email_variable), as: :json
    assert_response :success
  end

  test "should update email_variable" do
    patch email_variable_url(@email_variable), params: { email_variable: {  } }, as: :json
    assert_response 200
  end

  test "should destroy email_variable" do
    assert_difference('EmailVariable.count', -1) do
      delete email_variable_url(@email_variable), as: :json
    end

    assert_response 204
  end
end
