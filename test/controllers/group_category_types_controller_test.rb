require 'test_helper'

class GroupCategoryTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_category_type = group_category_types(:one)
  end

  test "should get index" do
    get group_category_types_url, as: :json
    assert_response :success
  end

  test "should create group_category_type" do
    assert_difference('GroupCategoryType.count') do
      post group_category_types_url, params: { group_category_type: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_category_type" do
    get group_category_type_url(@group_category_type), as: :json
    assert_response :success
  end

  test "should update group_category_type" do
    patch group_category_type_url(@group_category_type), params: { group_category_type: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_category_type" do
    assert_difference('GroupCategoryType.count', -1) do
      delete group_category_type_url(@group_category_type), as: :json
    end

    assert_response 204
  end
end
