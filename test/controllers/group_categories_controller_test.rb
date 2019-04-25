require 'test_helper'

class GroupCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_category = group_categories(:one)
  end

  test "should get index" do
    get group_categories_url, as: :json
    assert_response :success
  end

  test "should create group_category" do
    assert_difference('GroupCategory.count') do
      post group_categories_url, params: { group_category: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_category" do
    get group_category_url(@group_category), as: :json
    assert_response :success
  end

  test "should update group_category" do
    patch group_category_url(@group_category), params: { group_category: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_category" do
    assert_difference('GroupCategory.count', -1) do
      delete group_category_url(@group_category), as: :json
    end

    assert_response 204
  end
end
