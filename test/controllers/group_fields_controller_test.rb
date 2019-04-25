require 'test_helper'

class GroupFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_field = group_fields(:one)
  end

  test "should get index" do
    get group_fields_url, as: :json
    assert_response :success
  end

  test "should create group_field" do
    assert_difference('GroupField.count') do
      post group_fields_url, params: { group_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_field" do
    get group_field_url(@group_field), as: :json
    assert_response :success
  end

  test "should update group_field" do
    patch group_field_url(@group_field), params: { group_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_field" do
    assert_difference('GroupField.count', -1) do
      delete group_field_url(@group_field), as: :json
    end

    assert_response 204
  end
end
