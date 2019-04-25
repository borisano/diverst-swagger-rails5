require 'test_helper'

class EnterpriseEmailVariablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enterprise_email_variable = enterprise_email_variables(:one)
  end

  test "should get index" do
    get enterprise_email_variables_url, as: :json
    assert_response :success
  end

  test "should create enterprise_email_variable" do
    assert_difference('EnterpriseEmailVariable.count') do
      post enterprise_email_variables_url, params: { enterprise_email_variable: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show enterprise_email_variable" do
    get enterprise_email_variable_url(@enterprise_email_variable), as: :json
    assert_response :success
  end

  test "should update enterprise_email_variable" do
    patch enterprise_email_variable_url(@enterprise_email_variable), params: { enterprise_email_variable: {  } }, as: :json
    assert_response 200
  end

  test "should destroy enterprise_email_variable" do
    assert_difference('EnterpriseEmailVariable.count', -1) do
      delete enterprise_email_variable_url(@enterprise_email_variable), as: :json
    end

    assert_response 204
  end
end
