require 'test_helper'

class GroupsFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groups_field = groups_fields(:one)
  end

  test "should get index" do
    get groups_fields_url, as: :json
    assert_response :success
  end

  test "should create groups_field" do
    assert_difference('GroupsField.count') do
      post groups_fields_url, params: { groups_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show groups_field" do
    get groups_field_url(@groups_field), as: :json
    assert_response :success
  end

  test "should update groups_field" do
    patch groups_field_url(@groups_field), params: { groups_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy groups_field" do
    assert_difference('GroupsField.count', -1) do
      delete groups_field_url(@groups_field), as: :json
    end

    assert_response 204
  end
end
