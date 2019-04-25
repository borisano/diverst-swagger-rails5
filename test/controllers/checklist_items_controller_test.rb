require 'test_helper'

class ChecklistItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checklist_item = checklist_items(:one)
  end

  test "should get index" do
    get checklist_items_url, as: :json
    assert_response :success
  end

  test "should create checklist_item" do
    assert_difference('ChecklistItem.count') do
      post checklist_items_url, params: { checklist_item: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show checklist_item" do
    get checklist_item_url(@checklist_item), as: :json
    assert_response :success
  end

  test "should update checklist_item" do
    patch checklist_item_url(@checklist_item), params: { checklist_item: {  } }, as: :json
    assert_response 200
  end

  test "should destroy checklist_item" do
    assert_difference('ChecklistItem.count', -1) do
      delete checklist_item_url(@checklist_item), as: :json
    end

    assert_response 204
  end
end
