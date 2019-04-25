require 'test_helper'

class PolicyGroupTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policy_group_template = policy_group_templates(:one)
  end

  test "should get index" do
    get policy_group_templates_url, as: :json
    assert_response :success
  end

  test "should create policy_group_template" do
    assert_difference('PolicyGroupTemplate.count') do
      post policy_group_templates_url, params: { policy_group_template: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show policy_group_template" do
    get policy_group_template_url(@policy_group_template), as: :json
    assert_response :success
  end

  test "should update policy_group_template" do
    patch policy_group_template_url(@policy_group_template), params: { policy_group_template: {  } }, as: :json
    assert_response 200
  end

  test "should destroy policy_group_template" do
    assert_difference('PolicyGroupTemplate.count', -1) do
      delete policy_group_template_url(@policy_group_template), as: :json
    end

    assert_response 204
  end
end
